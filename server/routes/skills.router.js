const express = require('express');
const pool = require('../modules/pool');
const skillsRouter = express.Router();

//GET route to display all skills from the skills table
skillsRouter.get('/', (req,res) =>{
    sqlQuery=`
        SELECT *
        FROM skills
        ORDER BY skills.skill_name;
    `
    pool.query(sqlQuery)
        .then ((results) => {
            res.send(results.rows);
        })
        .catch((err) => {
            console.log('get skills failed', err);
            res.sendStatus(500);
        })
});

module.exports = skillsRouter;