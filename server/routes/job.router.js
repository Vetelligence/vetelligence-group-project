const express = require('express');
const pool = require('../modules/pool');
const jobRouter = express.Router();

// GET request for all job data to display
jobRouter.get('/', (req, res) => {
  const sqlQuery = `
    SELECT
      application.*,
      coalesce(sum(vote.vote), 0) as "voteCount"
    FROM application
      LEFT JOIN vote ON vote.application_id = application.id
    GROUP BY application.id
    ORDER BY application.id;`
  pool.query(sqlQuery)
    .then((results) => {
        res.send(results.rows)
    })
    .catch((err) => {
        console.log('GET failed in admin router', err);
    });
});

// POST route for employer to input a job
jobRouter.post ('/', (req, res) => {
    console.log('in POST', req.body);

  const sqlQuery = `
    INSERT INTO application (name, email, phone, address, address2, about, "whyYou", file, video)
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)`;
  const sqlParams = [
    req.body.formData.name,
    req.body.formData.email,
    req.body.formData.phone,
    req.body.formData.address,
    req.body.formData.address2,
    req.body.formData.about,
    req.body.formData.whyYou,
    req.body.formData.file,
    req.body.formData.video
 ];
  pool.query(sqlQuery, sqlParams)
  .then((results) => {
    console.log('POST is sending', results.rows);
    res.sendStatus(201);
  })
  .catch((err) => {
    console.log('error in post router', err);
    res.sendStatus(500);
  })
});

// PUT route to update the status on the Vet Page list view
jobRouter.put('/:applicationID', (req, res) => {
  const sqlQuery = `
    UPDATE application
    SET status = $1
    WHERE id = $2`;
  const sqlParams = [
    req.body.status,
    req.params.applicationID
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

// Delete route to remove an application from the Admin Page
jobRouter.delete('/:id', (req, res) => {
  const applicationID = req.params.id

  const sqlQuery = `
    DELETE FROM application
    WHERE application.id = $1;`

  const sqlParams = [
    applicationID,
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

module.exports = jobRouter;