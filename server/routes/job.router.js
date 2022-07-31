const express = require('express');
const pool = require('../modules/pool');
const jobRouter = express.Router();
const {rejectUnauthenticated,} = require('../modules/authentication-middleware');

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

jobRouter.get('/candidates/:id', rejectUnauthenticated, (req, res) => {

  const sqlQuery = `
    SELECT *
    FROM 
  `
  res.sendStatus(403)
})

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
  })
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
  })
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
  })
});

jobRouter.get('/:id', (req, res) => {
  console.log('made it into Current get');

  const sqlQuery = `
  SELECT jobs.job_description, jobs.job_name, employer.company, user_jobs.status
  FROM user_jobs
  JOIN jobs
  ON user_jobs.jobs_id = jobs.id
  JOIN "user"
  ON jobs.employer_id = "user".id
  JOIN employer
  ON "user".id = employer.user_id
  WHERE user_jobs.user_id = $1
  ;
    `;
  
  const sqlParams = [
    req.user.id
  ]

  
  pool.query(sqlQuery, sqlParams)
  //needs to be dbRes, not res. Can't have 2 of the same 
  .then(dbRes => {
    console.log('result rows', dbRes.rows)

    res.send(dbRes.rows);
  })
  .catch(err => {
    console.log('ERROR: GET CURRENT', err);
    res.sendStatus(500);
  })

})

module.exports = jobRouter;