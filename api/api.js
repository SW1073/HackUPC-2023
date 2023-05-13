const express = require('express')
const router = express.Router()
const { Pool } = require('pg')

// POST user to DB
router.post("/save-user", (req, res) => {
    const response = {message: "User saved"};
    res.send(response);
})

// GET user score form DB
router.get("/get-user-score", (req, res) => {
    // pool.query('SELECT  FROM users', (err, res) => {
    res.send("User score")
})

// GET ranking fron DB
router.get("/get-ranking", (req, res) => {
    // pool.query('SELECT  FROM users', (err, res) => {
    //     if(err) {
    //          console.log(err)
    //          res.status(500).json({ error: 'Server error' });
    //     }
    //     else res.json = res.rows
    // }
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
