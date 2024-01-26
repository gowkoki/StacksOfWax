const express = require("express");
const router = express.Router();
const axios = require("axios");
const multer = require("multer");
const fs = require("fs");
const path = require("path");
const storage = multer.memoryStorage();
const upload = multer({ storage });

// get - edit record
router.get("/editrecord", (req, res, next) => {
  try {
    let sessionobj = req.session;
    let user = sessionobj.authen ? sessionobj.authen : null;
    if (user != null) {
      let user_id = req.query.u_id;
      let vinyl_id = req.query.r_id;
      let endp = `https://stacksofwax-api.onrender.com/editrecord/${user_id}/${vinyl_id}`;
      axios.get(endp).then((response) => {
        let collection = response.data.data[0];
        let genres = response.data.data[1];
        let artist = response.data.data[2];
        let vinyl = response.data.data[3][0];
        let tracks = response.data.data[4];
        res.render("editrecord", {
          collection,
          genres,
          artist,
          vinyl,
          tracks,
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

// post - edit record
router.post(
  "/editrecord",
  upload.fields([
    { name: "artistimgField", maxCount: 1 },
    { name: "recordimgField", maxCount: 1 },
  ]),
  (req, res) => {
    let collection = req.body.selectCollectionField;
    let v_id = req.body.vinylIdField;
    let u_id = req.body.userIdField;
    let genres = req.body.selectgenreField;
    let title = req.body.titleField;
    let artistold = req.body.artistField;
    let newartist = req.body.newartistField;
    let describtion = req.body.describtionField;
    let release_year = req.body.releaseyearField;
    let tracks = req.body.field;
    let trackid = req.body.trackField;
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
      vinylid: v_id,
      selectedcollection: collection,
      selectedgenres: genres,
      enteredtitle: title,
      selectartist: artistold,
      artistnew: newartist,
      imgartist: artistimg,
      des: describtion,
      re_year: release_year,
      img: recordimg,
      trackslist: JSON.stringify(tracks),
      t_id: JSON.stringify(trackid),
    };
    const config = {
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
    };
    let endpoint = `https://stacksofwax-api.onrender.com/editrecord/${u_id}/${v_id}`;
    axios
      .post(endpoint, insertData, config)
      .then((response) => {
        let msg = response.data.respObj.msg;
        if (msg === "success") {
          req.flash("success", "Record edited successfully");
          res.redirect(`/setting?userid=${u_id}`);
        } else {
          req.flash("error", "Error in editing record");
          res.redirect(`/setting?userid=${u_id}`);
        }
      })
      .catch((error) => {
        console.error(error);
        res.status(500).send("Internal server error");
      });
  }
);

// delete - delete record
router.delete("/editrecord", (req, res, next) => {
  try {
    let record_id = req.query.r_id;
    let u_id = req.body.userIdField;
    let endp = `https://stacksofwax-api.onrender.com/editrecord/${record_id}`;
    axios
      .delete(endp)
      .then((response) => {
        req.flash("success", "Record deleted successfully");
        res.redirect("/");
      })
      .catch((err) => {
        console.error(err);
        res.status(500).send("Error in deleting record");
      });
  } catch (err) {
    next(err);
  }
});

module.exports = router;
