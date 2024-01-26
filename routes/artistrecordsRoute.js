const express = require("express");
const router = express.Router();
const axios = require("axios");

//get - artist - list of records
router.get("/artistVinylRecord", (req, res, next) => {
  try {
    let artistid = req.query.aid;
    let endp = `https://stacksofwax-api.onrender.com/artistVinylRecord/${artistid}`;
    axios.get(endp).then((response) => {
      let rowdata = response.data.data[0];
      let artistname = response.data.data[1][0];
      let sessionobj = req.session;
      let user = sessionobj.authen ? sessionobj.authen : null;
      res.render("artistVinylRecord", { rowdata, artistname, user });
    });
  } catch (err) {
    next(err);
  }
});

module.exports = router;
