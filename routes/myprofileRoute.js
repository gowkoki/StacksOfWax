const express = require("express");
const app = express();
const router = express.Router();
const axios = require("axios");
const methodOverride = require("method-override");
const { hashSync, genSaltSync, compareSync } = require("bcrypt");
app.use(methodOverride("_method"));

// get - myprofile page
router.get("/myprofile", (req, res, next) => {
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
    let sessionobj = req.session;
    let user = sessionobj.authen ? sessionobj.authen : null;
    if (user != null) {
      let u_id = req.query.userid;
      let endp = `https://stacksofwax-api.onrender.com/myprofile/${u_id}`;
      axios.get(endp).then((response) => {
        let userdata = response.data.data[0];
        res.render("myprofile", { userdata, user, message });
      });
    } else {
      res.redirect("/");
    }
  } catch (err) {
    next(err);
  }
});

//post - profile page
router.post("/myprofile", (req, res) => {
  let firname = req.body.firstnameField;
  let lasname = req.body.lastnameField;
  let email = req.body.emailField;
  let decryptpassword = req.body.userpasswordField;
  let oldpassword = req.body.currentpasswordField;
  let newpass = req.body.newpasswordField;
  let confirm = req.body.confirmpasswordField;
  let user = req.body.userid;
  if (!firname || !lasname || !email) {
    req.flash("error", "First & last name,email should be entered");
    res.redirect(`/myprofile?userid=${user}`);
  } else if (
    firname &&
    lasname &&
    email &&
    !oldpassword &&
    !newpass &&
    !confirm
  ) {
    const insertData = {
      first_name: firname,
      last_name: lasname,
      user_email: email,
      u_id: user,
    };
    const config = {
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
    };
    let endpoint = `https://stacksofwax-api.onrender.com/myprofile/editprofile/${user}`;
    axios
      .post(endpoint, insertData, config)
      .then((response) => {
        let affectedRows = response.data.data.affectedRows;
        if (affectedRows > 0) {
          req.flash("success", "Profile edited successfully");
          res.redirect(`/logout`);
        } else {
          req.flash("error", "Error in editing profile");
          res.redirect(`/myprofile?userid=${user}`);
        }
      })
      .catch((err) => {
        console.log(err.message);
      });
  } else {
    if (oldpassword && newpass && confirm) {
      const isValidPassword = compareSync(oldpassword, decryptpassword);
      if (isValidPassword) {
        if (newpass === confirm) {
          const passwordRegex =
            /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/; //minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character
          let checking = passwordRegex.test(newpass);
          if (checking) {
            const salt = genSaltSync(10);
            password = hashSync(newpass, salt);
            const insertData = {
              first_name: firname,
              last_name: lasname,
              user_email: email,
              newpassword: password,
              u_id: user,
            };
            const config = {
              headers: {
                "Content-Type": "application/x-www-form-urlencoded",
              },
            };
            let endpoint = `https://stacksofwax-api.onrender.com/myprofile/${user}`;
            axios
              .post(endpoint, insertData, config)
              .then((response) => {
                let affectedRows = response.data.data.affectedRows;
                if (affectedRows > 0) {
                  req.flash("success", "Updated your profile successfully");
                  res.redirect(`/logout`);
                } else {
                  req.flash("error", "Error in updating profile");
                  res.redirect(`/myprofile?userid=${user}`);
                }
              })
              .catch((err) => {
                console.log(err.message);
              });
          } else {
            req.flash("error", "Weak password!");
            res.redirect(`/myprofile?userid=${user}`);
          }
        } else {
          req.flash("error", "New & Confirm password doesn't match");
          res.redirect(`/myprofile?userid=${user}`);
        }
      } else {
        req.flash("error", "Current password is incorrect");
        res.redirect(`/myprofile?userid=${user}`);
      }
    } else {
      req.flash("error", "Fillup all the password fields");
      res.redirect(`/myprofile?userid=${user}`);
    }
  }
});

// delete - profile page
router.delete("/myprofile", (req, res, next) => {
  try {
    let u_id = req.query.userid;
    let endp = `https://stacksofwax-api.onrender.com/myprofile/${u_id}`;
    axios.delete(endp).then((response) => {
      req.flash("success", "Profile deleted successfully");
      res.redirect("/logout");
    });
  } catch (err) {
    next(err);
  }
});

module.exports = router;
