const express = require("express");
const router = express.Router();
const axios = require("axios");

//get - genres page
router.get("/genres", (req, res, next) => {
  try {
    let genres = req.query.genrename;
    let pages = req.query.page ? Number(req.query.page) : 1;
    let resultsPerpage = 20;
    let ep = `https://stacksofwax-api.onrender.com/genres`;
    let ep2 = `https://stacksofwax-api.onrender.com/genres/${genres}`;
    let ep3 = `https://stacksofwax-api.onrender.com/genres/${genres}/${
      resultsPerpage * pages - resultsPerpage
    }/${resultsPerpage}`;
    axios.all([axios.get(ep), axios.get(ep2), axios.get(ep3)]).then(
      axios.spread((firstResponse, secondResponse, thirdResponse) => {
        let rowdata = firstResponse.data.data;
        let count = secondResponse.data.data.length;
        let genresrecord = thirdResponse.data.data;
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
        res.render("genres", {
          title: "Genres",
          search: genres,
          rowdata,
          genresrecord,
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
