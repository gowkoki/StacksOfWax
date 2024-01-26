const express = require("express");
const router = express.Router();
const axios = require("axios");

// get - list of collection names
router.get("/allcollection", (req, res, next) => {
  try {
    let s_name = req.query.collname;
    if (!s_name) {
      s_name = "undefined";
    }
    let pages = req.query.page ? Number(req.query.page) : 1;
    let resultsPerpage = 20;
    let endp = `https://stacksofwax-api.onrender.com/allcollection/${s_name}`;
    let endp1 = `https://stacksofwax-api.onrender.com/allcollection/${s_name}/${
      resultsPerpage * pages - resultsPerpage
    }/${resultsPerpage}`;
    axios.all([axios.get(endp), axios.get(endp1)]).then(
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
        res.render("allcollection", {
          title: "All Collection",
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
