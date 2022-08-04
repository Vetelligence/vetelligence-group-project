const express = require('express');
const pool = require('../modules/pool');
const jobRouter = express.Router();
const {rejectUnauthenticated,} = require('../modules/authentication-middleware');
const filterVets = require('../scripts/filterVets')

// GET to display all jobs for this employer
jobRouter.get('/', (req, res) => {
  let employerID = req.user.id;
  const sqlQuery = `
    SELECT *
    FROM jobs
    WHERE employer_id = $1
    AND date_deleted is null;  
  `;
  const sqlParams = [
    employerID
  ]
  pool.query(sqlQuery, sqlParams)
    .then((results) => {
        res.send(results.rows)
    })
    .catch((err) => {
        console.log('GET failed in job router', err);
    });
});

// GET to return top 5 jobs
jobRouter.get('/veteran-landing', (req, res) => {
  const sqlQuery = `
    SELECT *
    FROM jobs
    LIMIT 5;  
  `;
  pool.query(sqlQuery)
    .then((results) => {
      res.send(results.rows)
    })
    .catch((err) => {
      console.log('GET failed in job router', err);
    });
});

// POST route for employer to input a job
// requires an async route as it needs to update the jobs table
// then it needs to get the Returning property from that post
// it takes the id created from the post of the job data and
// adds that to the POST to the job_skills table.
jobRouter.post ('/', (req, res) => {
    console.log('in POST', req.body);

  const sqlQuery = `
    INSERT INTO jobs (job_name, employer_id, job_description, city, state)
    VALUES ($1, $2, $3, $4, $5)
    RETURNING *
    `;
  const sqlParams = [
    req.body.jobInputData.name,
    req.user.id,
    req.body.jobInputData.description,
    req.body.jobInputData.city,
    req.body.jobInputData.state,
 ];

  pool.query(sqlQuery, sqlParams)
  .then((results) => {
    console.log('POST is sending', results.rows);
    const sqlQuery2 = `
    INSERT INTO job_skills (skills_id, job_id)
    VALUES
      ($2, $1),
      ($3, $1),
      ($4, $1),
      ($5, $1),
      ($6, $1);
  `;
  const sqlParams2 = [
    results.rows[0].id,
    req.body.jobInputData.skills[0],
    req.body.jobInputData.skills[1],
    req.body.jobInputData.skills[2],
    req.body.jobInputData.skills[3],
    req.body.jobInputData.skills[4],
  ]
    const promise = pool.query(sqlQuery2, sqlParams2);
    
    promise.then((dbRes) => {
      res.send(dbRes.rows);
    });
    promise.catch((err) => {
      res.sendStatus(500);
    });
  })
  .catch((err) => {
    console.log('error in post router', err);
    res.sendStatus(500);
  });
});

// PUT route to update the status on the Vet Page list view
jobRouter.put('/:vetID', (req, res) => {
  const sqlQuery = `
    UPDATE veterans
    SET status = $1
    WHERE id = $2`;
  const sqlParams = [
    req.body.status,
    req.params.vetID
  ];
  pool.query(sqlQuery, sqlParams)
  .then((results) => {
    console.log('PUT is updating', results.rows);
    res.sendStatus(201);
  })
  .catch((err) => {
    console.log('error in PUT router', err);
    res.sendStatus(500);
  });
});

// Delete route to remove a job from the Employer Page
jobRouter.put('/remove/:id', (req, res) => {
  const jobID = req.params.id
  const dateDeleted = new Date().toLocaleDateString().toString();

  const sqlQuery = `
    UPDATE jobs
    SET date_deleted = $2
    WHERE jobs.id = $1;`

  const sqlParams = [
    jobID,
    dateDeleted
  ]

  pool.query(sqlQuery, sqlParams)
  .then(response => {
    console.log(response.rows, "This was the response")
      res.sendStatus(200)
  })
  .catch(err => {
    console.log(`Error in the server DELETE route with ${err}`);
    res.sendStatus(500);
  });
});

jobRouter.get('/current-job/:id', rejectUnauthenticated, (req, res) => {
  console.log('made it into Current get');
  console.log(req.params.id)

  let currentJobsObj = {job: {}, candidates: []}

  const jobQuery = `
  SELECT jobs.id, jobs.job_description, jobs.job_name, employer.company, array_agg(skills.skill_name) AS skills
  FROM jobs
  JOIN "user"
  ON jobs.employer_id = "user".id
  JOIN employer
  ON "user".id = employer.user_id
  JOIN job_skills
  ON job_skills.job_id = jobs.id
  JOIN skills
  ON skills.id = job_skills.skills_id
  AND jobs.id = $1
  GROUP BY jobs.job_description, jobs.job_name, employer.company, jobs.id;
  `;

  const vetQuery = `
  SELECT "user".id, "user".first_name, "user".last_name, "user".phone_number, "user".email, "user".city, "user".state, array_agg(skills.skill_name) AS skills, veterans.status
  FROM "user"
  JOIN veterans
  ON "user".id = veterans.user_id
  JOIN mos_skills
  ON veterans.mos_id = mos_skills.mos_id
  JOIN skills
  ON skills.id = mos_skills.skill_id
  GROUP BY "user".iD, veterans.status
  `;

  const statusQuery = `
  SELECT user_id, status
  FROM user_jobs
  WHERE jobs_id = $1;
  
  `

  pool.query(jobQuery, [req.params.id])
  //needs to be dbRes, not res. Can't have 2 of the same 
  .then(dbRes => {
    console.log('result rows', dbRes.rows)
    currentJobsObj = {job: dbRes.rows[0]}
    pool.query(vetQuery)
      .then(vetRes => {
        console.log(vetRes.rows)
        pool.query(statusQuery, [req.params.id])
          .then(statusRes => {
            console.log(statusRes.rows)
            currentJobsObj= {...currentJobsObj, candidates: filterVets(vetRes.rows, currentJobsObj.job.skills, statusRes.rows)}
            res.send(currentJobsObj)
          })
        // res.send(currentJobsObj)
      })
  })
  .catch(err => {
    console.log('ERROR: GET CURRENT', err);
    res.sendStatus(500);
  });
});

jobRouter.post('/matched', (req, res) => {
  const insertQuery=`
  INSERT INTO user_jobs
  (user_id, jobs_id, status)
  VALUES ($1, $2, $3)
  RETURNING *
  ;
    `
  const updateQuery=`
  UPDATE user_jobs
  SET status = $1
  WHERE user_id = $2
  AND jobs_id = $3 
  RETURNING *
  `

  const updateParams=[
    req.body.status, req.body.user_id, req.body.jobs_id
  ]

  const insertParams=[
    req.body.user_id, req.body.jobs_id, req.body.status
  ]

  pool.query(updateQuery, updateParams)
  .then((updateRes) => {
    if(updateRes.rows.length === 0){
      pool.query(insertQuery, insertParams)
      .then((dbRes) => {
        res.send({id: dbRes.rows[0].jobs_id});
        return;
      })
      .catch((err)=> {
        res.sendStatus(500);
        console.log('failed in Update Job Status', err);
      })
    }
    else{
      res.send({id: updateRes.rows[0].jobs_id});
      
    }
  })

  .catch((err) => {
    console.log('error in match post', err)
    res.sendStatus(500);
  })
})
  

module.exports = jobRouter;