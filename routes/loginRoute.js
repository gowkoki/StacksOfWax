const express = require("express");
const router = express.Router();
const axios = require("axios");
const { hashSync, genSaltSync, compareSync } = require("bcrypt");

//get - login page
router.get("/login", (req, res, next) => {
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
    //page rendering...
    res.render("login", { message });
  } catch (err) {
    next(err);
  }
});

//post - login page
router.post("/login", (req, res) => {
  try {
    //get the values from the login page
    let email = req.body.emailField;
    let password = req.body.passwordField;
    //fields should not be empty
    if (!email || !password) {
      req.flash("error", "Kindly fillup all the fields");
      res.redirect("/register");
    } else {
      // checking the email address is existing in the DB
      const insertData = { user_email: email };
      const config = {
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
      };
      let endpoint = "https://stacksofwax-api.onrender.com/login";
      axios.post(endpoint, insertData, config).then((response) => {
        let numrows = response.data.data.length;
        let responseData = response.data.data[0];
        if (numrows > 0) {
          //if exists - decrypt the password
          const isValidPassword = compareSync(password, responseData.password);
          if (isValidPassword) {
            // if the password is correct
            let sessionobj = req.session;
            sessionobj.authen = responseData;
            req.flash("success", "Login successful");
            res.redirect("/");
          } else {
            //password is incorrect
            req.flash("error", "Invalid password");
            res.redirect("/login");
          }
        } else {
          //email is not exist in the DB
          req.flash("error", "Account doesn't exists, Kindly Register");
          res.redirect("/register");
        }
      });
    }
  } catch (err) {
    next(err);
  }
});

module.exports = router;
