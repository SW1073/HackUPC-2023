const express = require('express')
const router = express.Router()
const { Pool } = require('pg')

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'pgdb',
    password: '123',
    port: 5432,
});

router.use(express.json());

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

    let query = "SELECT SUM(points) as points FROM IndividualGame WHERE player = '" + username + "'";

    pool.query(query, (err, query_res) => {
        console.log(query_res.rows)
        if(err) {
            console.log(err)
            res.status(500).json({ error: 'Server error' });
        }
        else if (query_res.rows[0].points == null) {
            res.json([{points: 0}]) 
        }
        else res.json(query_res.rows)
    });
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

router.post("/save-individual-game", (req, res) => {
    const username = req.body.username;
    const points = req.body.score;

    if (username == undefined) {
        res.status(400).json({ error: 'Bad request' });
        return;
    }

    const query = "INSERT INTO IndividualGame (player, points) VALUES ('" + username + "', " + points + ")";

    pool.query(query, (err, query_res) => {
        if(err) {
            console.log(err);
            res.status(500).json({ error: 'Server error' });
        }
        else {
            res.status(200);
        }
    });
})

// GET ranking fron DB
router.get("/ranking", (req, res) => {
    const query = 'SELECT u.username, SUM(game.points) FROM IndividualGame game INNER JOIN Users u ON u.username=game.player GROUP BY u.username ORDER BY SUM(game.points) desc';

    pool.query(query, (err, query_res) => {
        if(err) {
            console.log(err)
            res.status(500).json({ error: 'Server error' });
        }
        else {
            res.send(query_res.rows);
        }
    });
})

router.get("/random-question", (req, res) => {
    const query = 'SELECT id, question, city, choices FROM Questions ORDER BY RANDOM() LIMIT 1';

    pool.query(query, (err, query_res) => {
        if(err) {
            console.log(err)
            res.status(500).json({ error: 'Server error' });
        }
        else {
            res.json(query_res.rows);
        }
    });
});

router.post("/random-question-city", (req, res) => {
    const city = req.body.city;

    const query = "SELECT id, question, choices FROM Questions WHERE city = '" + city + "' ORDER BY RANDOM() LIMIT 1";

    pool.query(query, (err, query_res) => {
        if(err) {
            console.log(err)
            res.status(500).json({ error: 'Server error' });
        }
        else {
            res.json(query_res.rows);
        }
    });
});

router.post("/get-question-answer", (req, res) => {
    const id = req.body.id;

    if (id == undefined) {
        res.status(400).json({ error: 'Bad request' });
        return;
    }

    const query = "SELECT answer FROM Questions WHERE id = " + id;

    pool.query(query, (err, query_res) => {
        if(err) {
            console.log(err)
            res.status(500).json({ error: 'Server error' });
        }
        else {
            res.json(query_res.rows);
        }
    });
});

router.get("/random-city", (req, res) => {
    const query = 'SELECT name FROM Cities ORDER BY RANDOM() LIMIT 1';

    pool.query(query, (err, query_res) => {
        if(err) {
            console.log(err)
            res.status(500).json({ error: 'Server error' });
        }
        else {
            res.json(query_res.rows);
        }
    });

});

module.exports = router
