const express = require("express");
const router = express.Router();
const axios = require("axios");

// get - setting page
router.get("/setting", (req, res, next) => {
  try {
    // to find error or success message
    const successMessage = req.flash("success");
    const errorMessage = req.flash("error");
    let message = {};
    if (successMessage.length > 0) {
      message.success = successMessage[0];
    }
    if (errorMessage.length > 0) {
      message.error = errorMessage[0];
    }
    let sessionobj = req.session;
    let user = sessionobj.authen ? sessionobj.authen : null;
    if (user != null) {
      let u_id = req.query.userid;
      let endp = `https://stacksofwax-api.onrender.com/setting/${u_id}`;
      axios.get(endp).then((response) => {
        let collection = response.data.data;

        let album = null;
        res.render("setting", { user, collection, album, message });
      });
    } else {
      res.redirect("/");
    }
  } catch (err) {
    next(err);
  }
});

//post - setting page
router.post("/setting", (req, res) => {
  let collection_id = req.body.updatecollectionField;
  let user_id = req.body.userIdField;
  const insertData = {
    collection: collection_id,
    u_id: user_id,
  };
  const config = {
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  };
  let endpoint = `https://stacksofwax-api.onrender.com/setting/${user_id}`;
  axios
    .post(endpoint, insertData, config)
    .then((response) => {
      let album = response.data.data[0];
      let collection = response.data.data[1];
      let message = {};
      let sessionobj = req.session;
      let user = sessionobj.authen ? sessionobj.authen : null;
      res.render("setting", { album, collection, user, message });
    })
    .catch((err) => {
      console.log(err.message);
    });
});

// delete collection - setting page
router.delete("/setting", (req, res, next) => {
  try {
    let user_id = req.body.uIdField;
    let coll_id = req.body.collectionField;
    console.log(user_id, coll_id);
    let endp = `https://stacksofwax-api.onrender.com/setting/${user_id}/${coll_id}`;
    axios
      .delete(endp)
      .then((response) => {
        req.flash("success", "Collection deleted successfully");
        res.redirect(`/setting?userid=${user_id}`);
      })
      .catch((err) => {
        console.error(err);
        res.status(500).send("Error in deleting Collection");
      });
  } catch (err) {
    next(err);
  }
});

module.exports = router;
