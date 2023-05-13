const express = require('express')
const router = express.Router()
const { Pool } = require('pg')

router.use(express.json());

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'pgdb',
    password: '123',
    port: 5432,
});

router.use(express.json())

// POST user to DB
router.post("/save-user", (req, res) => {
    const username = req.body.username;

    if (username == undefined) {
        res.status(400).json({ error: 'Bad request' });
        return;
    }

    const query = "INSERT INTO Users (username) VALUES ('" + username + "')";

    pool.query(query, (err, query_res) => {
        if(err) {
            console.log(err);
            res.status(500).json({ error: 'Server error' });
        }
        else {
            res.json(query_res.rows);
        }
    });
});



router.get("/user/:username", (req, res) => {
    const username = req.params.username;

    if (username == undefined) {
        res.status(400).json({ error: 'Bad request' });
        return;
    }

    let query = "SELECT * FROM IndividualGame WHERE player = '" + username + "'";

    pool.query(query, (err, query_res) => {
        if(err) {
            console.log(err)
            res.status(500).json({ error: 'Server error' });
        }
        else res.json(query_res.rows)
    });
})

// GET ranking fron DB
router.get("/ranking", (req, res) => {
    // TODO fix this
     pool.query('SELECT username,SUM(game.points) FROM IndividualGame game JOIN Users u ON u.username=game.player GROUP BY username ORDER BY SUM(game.points) DESC', (err, res) => { 
     if(err) {
              console.log(err)
              res.status(500).json({ error: 'Server error' });
         }
         else res.json = res.rows
     });
     
})

router.get("/questions", (req, res) => {
    // TODO fix this

    // pool.query('SELECT  FROM users', (err, res) => {
    //     if(err) {
    //          console.log(err)
    //          res.status(500).json({ error: 'Server error' });
    //     }
    //     else res.json = res.rows
    // }
})

router.get("/users", (req, res) => {
    pool.query('SELECT * FROM Users', (err, query_res) => {
        if(err) {
            console.log(err)
            res.status(500).json({ error: 'Server error' });
        }
        else {
            res.send(query_res.rows);
        }
    });
})

module.exports = router
