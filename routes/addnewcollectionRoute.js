const express = require("express");
const router = express.Router();
const axios = require("axios");

// get - add collection name
router.get("/addnewcollection", (req, res, next) => {
  try {
    let sessionobj = req.session;
    let user = sessionobj.authen ? sessionobj.authen : null;
    if (user != null) {
      res.render("addnewcollection", { user });
    } else {
      res.redirect("/");
    }
  } catch (err) {
    next(err);
  }
});

// post - add collection name
router.post("/addnewcollection", (req, res) => {
  let addnewcollection = req.body.addcollectionField;
  let u_id = req.body.userIdField;
  console.log(addnewcollection);
  const insertData = {
    newcollection: addnewcollection,
    userid: u_id,
  };
  const config = {
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  };
  let endpoint = `https://stacksofwax-api.onrender.com/addnewcollection/${u_id}`;
  axios
    .post(endpoint, insertData, config)
    .then((response) => {
      let insertedid = response.data.respObj.id;
      if (insertedid > 0) {
        req.flash("success", "Collection created successfully");
        res.redirect(`/addcollection?userid=${u_id}`);
      } else {
        req.flash("error", "Error in creating Collection");
        res.redirect(`/addcollection?userid=${u_id}`);
      }
    })
    .catch((err) => {
      console.log(err.message);
    });
});

module.exports = router;
