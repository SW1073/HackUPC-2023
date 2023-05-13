const express = require('express')
const router = express.Router() 

// POST user to DB
router.post("/save-user", (req, res) => {
    const user = req.body
    consol.log(user)
    res.send("User saved")
})

// GET user score form DB
router.get("/get-user-score", (req, res) => {
    res.send("User score")
})

module.exports = router
