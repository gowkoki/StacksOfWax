const express = require("express");
const router = express.Router();
const axios = require("axios");

//get - logout
router.get("/logout", (req, res, next) => {
  try {
    req.session.destroy();
    res.redirect("/");
  } catch (err) {
    next(err);
  }
});

module.exports = router;
