const express = require("express");
const router = express.Router();
const axios = require("axios");
const multer = require("multer");
const fs = require("fs");
const path = require("path");
const storage = multer.memoryStorage();
const upload = multer({ storage });

// get - add record
router.get("/addcollection", (req, res, next) => {
  try {
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
      let endp = `https://stacksofwax-api.onrender.com/addcollection/${u_id}`;
      axios.get(endp).then((response) => {
        let collection = response.data.data[0];
        let genres = response.data.data[1];
        let artist = response.data.data[2];
        res.render("addcollection", {
          collection,
          genres,
          artist,
          user,
          message,
        });
      });
    } else {
      res.redirect("/");
    }
  } catch (err) {
    next(err);
  }
});

// post - add record
router.post(
  "/addcollection",
  upload.fields([
    { name: "artistimgField", maxCount: 1 },
    { name: "recordimgField", maxCount: 1 },
  ]),
  (req, res) => {
    let collection = req.body.selectCollectionField;
    let u_id = req.body.userIdField;
    let genres = req.body.selectgenreField;
    let title = req.body.titleField;
    let artistold = req.body.artistField;
    let newartist = req.body.newartistField;
    let describtion = req.body.describtionField;
    let release_year = req.body.releaseyearField;
    let tracks = req.body.field;
    let artistimg = null;
    if (req.files["artistimgField"]) {
      const imgPath = path.join(
        __dirname,
        "../uploads",
        req.files["artistimgField"][0].originalname
      );
      fs.writeFileSync(imgPath, req.files["artistimgField"][0].buffer);
      artistimg = `/${req.files["artistimgField"][0].originalname}`;
    }
    let recordimg = null;
    if (req.files["recordimgField"]) {
      const imgPath = path.join(
        __dirname,
        "../uploads",
        req.files["recordimgField"][0].originalname
      );
      fs.writeFileSync(imgPath, req.files["recordimgField"][0].buffer);
      recordimg = `/${req.files["recordimgField"][0].originalname}`;
    }
    const insertData = {
      userid: u_id,
      selectedcollection: collection,
      selectedgenres: genres,
      enteredtitle: title,
      selectartist: artistold,
      artistnew: newartist,
      imgartist: artistimg,
      des: describtion,
      re_year: release_year,
      img: recordimg,
      trackslist: JSON.stringify(tracks), // Convert tracks array to JSON string
    };
    const config = {
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
    };
    let endpoint = `https://stacksofwax-api.onrender.com/addcollection/${u_id}`;
    axios
      .post(endpoint, insertData, config)
      .then((response) => {
        let insertedid = response.data.respObj.id;
        if (insertedid > 0) {
          req.flash("success", "Record added successfully");
          res.redirect(`/addcollection?userid=${u_id}`);
        } else {
          req.flash("error", "Error in adding!!");
          res.redirect(`/addcollection?userid=${u_id}`);
        }
      })
      .catch((error) => {
        console.error(error);
        res.status(500).send("Internal server error");
      });
  }
);

module.exports = router;
