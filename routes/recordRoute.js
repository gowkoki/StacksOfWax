const express = require("express");
const router = express.Router();
const axios = require("axios");

//get - record
router.get("/record", (req, res, next) => {
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
    let recordid = req.query.rid;
    let sessionobj = req.session;
    let user = sessionobj.authen ? sessionobj.authen : null;
    if (user != null) {
      let userid = user.user_id;
      endp = `https://stacksofwax-api.onrender.com/record/${recordid}/${userid}`;
      axios.get(endp).then((response) => {
        let rowdata = response.data.data[0][0];
        let tracks = response.data.data[1];
        let review = response.data.data[2];
        let likeField = response.data.data[3][0];
        let like = 0;
        if (likeField != undefined) {
          like = 1;
        }
        res.render("record", {
          rowdata,
          tracks,
          review,
          like,
          user,
          message,
        });
      });
    } else {
      let endp = `https://stacksofwax-api.onrender.com/record/${recordid}`;
      axios.get(endp).then((response) => {
        let rowdata = response.data.data[0][0];
        let tracks = response.data.data[1];
        let review = response.data.data[2];
        res.render("record", { rowdata, tracks, review, user });
      });
    }
  } catch (err) {
    next(err);
  }
});

//post - record - review and rating
router.post("/record", (req, res) => {
  let review_date = new Date().toJSON().slice(0, 10);
  let comment = req.body.commentField;
  let vinyl_id = req.body.vinylIdField;
  let user_id = req.body.userIdField;
  let rating = req.body.ratingField;
  const insertData = {
    date: review_date,
    content: comment,
    vin_id: vinyl_id,
    us_id: user_id,
    rat: rating,
  };
  const config = {
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  };
  let endpoint = "https://stacksofwax-api.onrender.com/record";
  axios
    .post(endpoint, insertData, config)
    .then((response) => {
      let insertedid = response.data.respObj.id;
      console.log(insertedid);
      if (insertedid > 0) {
        req.flash("success", "Review and Rating saved successfully");
        res.redirect(`/record?rid=${vinyl_id}`);
      } else {
        req.flash("error", "Error in saving Review and Rating");
        res.redirect(`/record?rid=${vinyl_id}`);
      }
    })
    .catch((err) => {
      console.log(err.message);
    });
});

//post - record
router.post("/record/like", (req, res) => {
  let vinyl_id = req.body.vinylIdField;
  let user_id = req.body.userIdField;
  let like_f = req.body.likecountField;
  const insertData = {
    vin_id: vinyl_id,
    us_id: user_id,
    like: like_f,
  };
  const config = {
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  };
  let endpoint = "https://stacksofwax-api.onrender.com/record/like";
  axios
    .post(endpoint, insertData, config)
    .then((response) => {
      let insertedid = response.data.respObj.id;
      console.log(insertedid);
      if (insertedid > 0) {
        req.flash("success", "You Liked this record");
        res.redirect(`/record?rid=${vinyl_id}`);
      } else {
        req.flash("error", "You unselected Like for this record");
        res.redirect(`/record?rid=${vinyl_id}`);
      }
    })
    .catch((err) => {
      console.log(err.message);
    });
});

module.exports = router;
