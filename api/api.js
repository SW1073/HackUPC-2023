const express = require('express')
const router = express.Router() 

// POST user to DB
router.post("/save-user", (req, res) => {
    const response = {message: "User saved"};
    res.send(response);
})

// GET user score form DB
router.get("/get-user-score", (req, res) => {
    res.send("User score")
})

module.exports = router
