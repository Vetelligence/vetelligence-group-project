const express = require('express');
const pool = require('../modules/pool');
const router = express.Router();
const {
    rejectUnauthenticated,
  } = require('../modules/authentication-middleware');

//grabs all mos data form specific branch
router.get('/:branch', (req,res) =>{
    console.log(req.params.branch)
    sqlQuery=`
        SELECT * FROM "mos"
        WHERE branch = $1
        ORDER BY mos
    `
    pool.query(sqlQuery, [req.params.branch])
        .then ((results) => {
            // console.log('get mos success', results.rows);
            res.send(results.rows);
        })
        .catch((err) => {
            console.log('get mos failed', err);
            res.sendStatus(500);
        })
} )

module.exports = router;