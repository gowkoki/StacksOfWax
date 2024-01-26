const express = require("express");
const router = express.Router();
const axios = require("axios");

//get - index page
router.get("/", (req, res, next) => {
  try {
    let ep = `https://stacksofwax-api.onrender.com/`;
    axios.get(ep).then((response) => {
      let recentadded = response.data.data[0];
      let mostliked = response.data.data[1];
      let sessionobj = req.session;
      let user = sessionobj.authen ? sessionobj.authen : null;

      // error or success message
      const successMessage = req.flash("success");
      const errorMessage = req.flash("error");
      let message = {};
      if (successMessage.length > 0) {
        message.success = successMessage[0];
      }
      if (errorMessage.length > 0) {
        message.error = errorMessage[0];
      }
      res.render("index", { recentadded, mostliked, user, message });
    });
  } catch (err) {
    next(err);
  }
});

module.exports = router;
