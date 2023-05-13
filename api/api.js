const express = require('express')
const router = express.Router()
const { Pool } = require('pg')

router.use(express.json());

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'pgdb',
    port: 5432,
});


// POST user to DB
router.post("/get-user", (req, res) => {
    const response = {message: "User saved"};
    pool.query('INSERT INTO Users (username) VALUES ($1)', [req.body.name], (err, res) => {
        if(err) {
            console.log(err);
            res.status(500).json({ error: 'Server error' });
        }
        else res.json(res.rows);
    });
    res.send(response);
});

// GET user score form DB
router.get("/user/:username", (req, res) => {
    pool.query('SELECT SUM(points) FROM IndividualGame WHERE player = ($1)', (err, res) => {
        if(err) {
            console.log(err)
            res.status(500).json({ error: 'Server error' });
        }
        else res.json(res.rows)
    });
})

// GET ranking fron DB
router.get("/ranking", (req, res) => {
     pool.query('SELECT username,SUM(game.points) FROM IndividualGame game JOIN Users u ON u.username=game.playe GROUP BY username ORDER BY SUM(game.points) DESC', (err, res) => { 
     if(err) {
              console.log(err)
              res.status(500).json({ error: 'Server error' });
         }
         else res.json = res.rows
     });
     
})

router.get("/questions", (req, res) => {
    // pool.query('SELECT  FROM users', (err, res) => {
    //     if(err) {
    //          console.log(err)
    //          res.status(500).json({ error: 'Server error' });
    //     }
    //     else res.json = res.rows
    // }
})

module.exports = router
