const express = require('express');
const pool = require('../modules/pool');
const skillsRouter = express.Router();

//grabs all skills
skillsRouter.get('/', (req,res) =>{
    // console.log("this is what is being requested:", req.params);
    sqlQuery=`
        SELECT *
        FROM skills
        ORDER BY skills.skill_name;
    `
    pool.query(sqlQuery)
        .then ((results) => {
            // console.log('get skills success', results.rows);
            res.send(results.rows);
        })
        .catch((err) => {
            console.log('get skills failed', err);
            res.sendStatus(500);
        })
} )

module.exports = skillsRouter;