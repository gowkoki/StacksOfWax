const express = require("express");
const router = express.Router();
const axios = require("axios");

// get - library page
router.get("/library", (req, res, next) => {
  try {
    let sessionobj = req.session;
    let user = sessionobj.authen ? sessionobj.authen : null;
    if (user != null) {
      let uid = req.query.userid;
      let endp = `https://stacksofwax-api.onrender.com/library/${uid}`;
      axios.get(endp).then((response) => {
        let vinyl = null;
        let collection = response.data.data;
        res.render("library", { vinyl, collection, user });
      });
    } else {
      res.redirect("/");
    }
  } catch (err) {
    next(err);
  }
});

// post - library page
router.post("/library", (req, res, next) => {
  let collection = req.body.selectcollectionField;
  let user_id = req.body.userIdField;
  console.log(collection);
  const insertData = {
    collection: collection,
    us_id: user_id,
  };
  const config = {
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  };
  let endpoint = `https://stacksofwax-api.onrender.com/library/${user_id}`;
  axios.post(endpoint, insertData, config).then((response) => {
    let vinyl = response.data.data[0];
    let collection = response.data.data[1];
    let sessionobj = req.session;
    let user = sessionobj.authen ? sessionobj.authen : null;
    res.render("library", { vinyl, collection, user });
  });
});

module.exports = router;
