const express = require("express");
const router = express.Router();
const axios = require("axios");

//get - dashboard
router.get("/dashboard", (req, res, next) => {
  try {
    let sessionobj = req.session;
    let user = sessionobj.authen ? sessionobj.authen : null;
    if (user != null) {
      var uid = req.query.userid;
      let ep = `https://stacksofwax-api.onrender.com/dashboard/${uid}`;
      axios.get(ep).then((response) => {
        let data = response.data.data[0];
        let barchart = response.data.data[1];
        let collection = response.data.data[2][0]
          ? response.data.data[2][0]
          : 0;
        let record = response.data.data[3][0] ? response.data.data[3][0] : 0;
        let unique_record = response.data.data[4][0]
          ? response.data.data[4][0]
          : 0;
        res.render("dashboard", {
          data,
          barchart,
          collection,
          record,
          unique_record,
          user,
        });
      });
    } else {
      res.redirect("/");
    }
  } catch (err) {
    next(err);
  }
});

module.exports = router;
