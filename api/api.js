const express = require('express')
const router = express.Router() 

router.use(express.json())

// POST user to DB
router.post("/save-user", (req, res) => {
    console.log(req.body);
    const response = {message: "User saved"};
    res.send(response);
})

// GET user score form DB
router.get("/get-user-score", (req, res) => {
    res.send("User score")
})

module.exports = router
