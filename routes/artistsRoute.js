const express = require("express");
const router = express.Router();
const axios = require("axios");

//get - artists
router.get("/artists", (req, res, next) => {
  try {
    let s_name = req.query.artistname;
    if (!s_name) {
      s_name = "undefined";
    }
    let pages = req.query.page ? Number(req.query.page) : 1;
    let resultsPerpage = 20;
    let ep = `https://stacksofwax-api.onrender.com/artists/${s_name}`;
    let ep1 = `https://stacksofwax-api.onrender.com/artists/${s_name}/${
      resultsPerpage * pages - resultsPerpage
    }/${resultsPerpage}`;
    axios.all([axios.get(ep), axios.get(ep1)]).then(
      axios.spread((firstResponse, secondResponse) => {
        let count = firstResponse.data.data.length;
        let rowdata = secondResponse.data.data;
        let sessionobj = req.session;
        let user = sessionobj.authen ? sessionobj.authen : null;
        const totalpage = Math.ceil(count / resultsPerpage);
        let iterator = pages - 5 < 1 ? 1 : pages - 5;
        let endingLink =
          iterator + 9 <= totalpage
            ? iterator + 9
            : pages + (totalpage - pages);
        if (endingLink < pages + 4) {
          iterator -= pages + 4 - totalpage;
        }
        res.render("artists", {
          title: "Artists",
          search: s_name,
          rowdata,
          user,
          nowPage: parseInt(pages),
          totalpage,
          iterator,
          endingLink,
        });
      })
    );
  } catch (err) {
    next(err);
  }
});

module.exports = router;
