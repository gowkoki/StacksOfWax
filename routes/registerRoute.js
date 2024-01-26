const express = require("express");
const router = express.Router();
const axios = require("axios");
const { hashSync, genSaltSync, compareSync } = require("bcrypt");

// get - register page
router.get("/register", (req, res, next) => {
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
    res.render("register", { message });
  } catch (err) {
    next(err);
  }
});

// post - register page
router.post("/register", (req, res) => {
  //get the values from the register page
  let firstname = req.body.firstnameField;
  let lastname = req.body.lastnameField;
  let email = req.body.emailField;
  let password = req.body.passwordField;

  const passwordRegex =
    /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/; //minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character
  let checking = passwordRegex.test(password);

  //fields should not be empty
  if (!firstname || !lastname || !email || !password) {
    req.flash("error", "Kindly fillup all the fields");
    res.redirect("/register");
  } else if (!checking) {
    // checking password is strong
    req.flash("error", "Weak password");
    res.redirect("/register");
  } else {
    // checking the email address has already been registered
    const insertData = { uemail: email };
    const config = {
      headers: { "Content-Type": "application/x-www-form-urlencoded" },
    };
    let endpoint1 = "https://stacksofwax-api.onrender.com/register/checker";
    axios.post(endpoint1, insertData, config).then((response) => {
      var emailchecker = response.data.data.length;
      console.log(emailchecker);
      if (emailchecker > 0) {
        //if email address is already exists
        req.flash("error", "Account already exists");
        res.redirect("/login");
      } else {
        //if email address is not exists - register the user details in the DB
        //encrypt the password
        const salt = genSaltSync(10);
        password = hashSync(password, salt);
        const insertData = {
          fname: firstname,
          lname: lastname,
          uemail: email,
          upassword: password,
        };
        const config = {
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        };
        let endpoint = "https://stacksofwax-api.onrender.com/register";
        axios
          .post(endpoint, insertData, config)
          .then((response) => {
            let insertedid = response.data.respObj.id;
            console.log(insertedid);
            if (insertedid > 0) {
              req.flash("success", "Registred successfully");
              res.redirect("/login");
            }
          })
          .catch((err) => {
            console.log(err.message);
          });
      }
    });
  }
});

module.exports = router;
