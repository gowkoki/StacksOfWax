const express = require("express");
const router = express.Router();
const axios = require("axios");

//get - edit collection name
router.get("/editcollname", (req, res, next) => {
  try {
    let sessionobj = req.session;
    let user = sessionobj.authen ? sessionobj.authen : null;
    if (user != null) {
      let user_id = req.query.u_id;
      let collectionid = req.query.collection_id;
      let ep = `https://stacksofwax-api.onrender.com/editcollname/${user_id}/${collectionid}`;
      axios.get(ep).then((response) => {
        let rowdata = response.data.data[0];
        res.render("editcollname", { rowdata, user });
      });
    } else {
      res.redirect("/");
    }
  } catch (err) {
    next(err);
  }
});

//post - edit collection name
router.post("/editcollname", (req, res) => {
  let editedcollection_name = req.body.editcollectionField;
  let coll_id = req.body.collidField;
  let u_id = req.body.userIdField;
  const insertData = {
    collection: editedcollection_name,
    collection_id: coll_id,
    user_id: u_id,
  };
  const config = {
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  };
  let endpoint = `https://stacksofwax-api.onrender.com/editcollname/${u_id}/${coll_id}`;
  axios
    .post(endpoint, insertData, config)
    .then((response) => {
      let affectedRows = response.data.data.affectedRows;
      if (affectedRows > 0) {
        req.flash("success", "Collection name edited successfully");
        res.redirect(`/setting?userid=${u_id}`);
      } else {
        req.flash("error", "Error in editing collection name");
        res.redirect(`/setting?userid=${u_id}`);
      }
    })
    .catch((err) => {
      console.log(err.message);
    });
});

module.exports = router;
