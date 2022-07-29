const express = require('express');
const {
  rejectUnauthenticated,
} = require('../modules/authentication-middleware');
const encryptLib = require('../modules/encryption');
const pool = require('../modules/pool');
const userStrategy = require('../strategies/user.strategy');

const router = express.Router();

// Handles Ajax request for user information if user is authenticated
router.get('/', rejectUnauthenticated, (req, res) => {
  // Send back user object from the session (previously queried from the database)
  res.send(req.user);
});

router.get('/:users', (req, res) =>{
  switch (req.params.users){
    case 'veteran':
     {const sqlQuery = `
      SELECT
        "user".*,
        veterans.mos_id,
        veterans.status
      FROM "user"
      JOIN veterans
        ON "user".id = veterans.user_id
      WHERE "user".user_type = 'veteran';
     `
     pool.query(sqlQuery)
      .then((result) => {
        console.log('get veterans success', result.rows);
        res.send(result.rows);
      })
      .catch((err) => {
        console.log('err in get veterans', err);
        res.sendStatus(500);
      })
    }
      break;
    
    case 'employer':
      {const sqlQuery = `
      SELECT
        "user".*,
        "employer".company,
        "employer".status
      FROM "user"
      JOIN "employer"
        ON "user".id = employer.user_id
      WHERE "user".user_type = 'employer';
     `

     pool.query(sqlQuery)
     .then((result) => {
       console.log('get employers success', result.rows);
       res.send(result.rows);
     })
     .catch((err) => {
       console.log('err in get employers', err);
       res.sendStatus(500);
     })
    }
    
    break;
   }
})

// Handles POST request with new user data
// The only thing different from this and every other post we've seen
// is that the password gets encrypted before being inserted
router.post('/register', (req, res, next) => {
  const username = req.body.username;
  const password = encryptLib.encryptPassword(req.body.password);

  const queryText = `INSERT INTO "user" (username, password, state, city, user_type, first_name, last_name, email, phone_number)
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING id`;
  pool
    .query(queryText, [username, password, req.body.state, req.body.city, req.body.userType, req.body.firstName, req.body.lastName, req.body.email, req.body.phoneNumber])
    .then((result) => {
     switch (req.body.userType){
      case 'veteran':
        {const vetQuery = `
          INSERT INTO "veterans" (user_id , mos_id)
          VALUES ($1, $2)
        `
        pool.query(vetQuery, [result.rows[0].id, req.body.mos]);}
        break;
      
      case 'employer':
        {const employerQuery = `
        INSERT INTO "employer" (user_id , company)
        VALUES ($1, $2)
      `
      pool.query(employerQuery, [result.rows[0].id, req.body.company]);}
      break;
     }
      res.sendStatus(201)})
    .catch((err) => {
      console.log('User registration failed: ', err);
      res.sendStatus(500);
    });
});

// Handles login form authenticate/login POST
// userStrategy.authenticate('local') is middleware that we run on this route
// this middleware will run our POST if successful
// this middleware will send a 404 if not successful
router.post('/login', userStrategy.authenticate('local'), (req, res) => {
  res.sendStatus(200);
});

// clear all server session information about this user
router.post('/logout', (req, res) => {
  // Use passport's built-in method to log out the user
  req.logout();
  res.sendStatus(200);
});

module.exports = router;
