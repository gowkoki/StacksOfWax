const express = require("express");
const router = express.Router();
const axios = require("axios");

// get - each collection record
router.get("/collection", (req, res, next) => {
  try {
    let collectionid = req.query.cid;
    let endp = `https://stacksofwax-api.onrender.com/collection/${collectionid}`;
    axios.get(endp).then((response) => {
      let collectiondata = response.data.data[0];
      let collectionname = response.data.data[1][0];
      let sessionobj = req.session;
      let user = sessionobj.authen ? sessionobj.authen : null;
      res.render("collection", { collectiondata, collectionname, user });
    });
  } catch (err) {
    next(err);
  }
});

module.exports = router;
