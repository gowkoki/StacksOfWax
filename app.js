const express = require("express");
const app = express();
const globalErrHandler = require("./middleware/ErrorHandler");
const path = require("path");
const PORT = process.env.PORT || 3000;
const cookieParser = require("cookie-parser");
const sessions = require("express-session");
const flash = require("connect-flash");
const axios = require("axios");
const methodOverride = require("method-override");
const oneHour = 1000 * 60 * 60 * 1;

const homeRoute = require("./routes/homeRoute");
const discoverRoute = require("./routes/discoverRoute");
const genresRoute = require("./routes/genresRoute");
const artistsRoute = require("./routes/artistsRoute");
const artistrecordsRoute = require("./routes/artistrecordsRoute");
const allcollectionRoute = require("./routes/allcollectionRoute");
const collectionRoute = require("./routes/collectionRoute");
const recordRoute = require("./routes/recordRoute");
const loginRoute = require("./routes/loginRoute");
const registerRoute = require("./routes/registerRoute");
const dashboardRoute = require("./routes/dashboardRoute");
const libraryRoute = require("./routes/libraryRoute");
const addcollectionRoute = require("./routes/addcollectionRoute");
const settingRoute = require("./routes/settingRoute");
const logoutRoute = require("./routes/logoutRoute");
const addnewcollectionRoute = require("./routes/addnewcollectionRoute");
const editcollnameRoute = require("./routes/editcollnameRoute");
const editrecordRoute = require("./routes/editrecordRoute");
const myprofileRoute = require("./routes/myprofileRoute");

app.use(methodOverride("_method"));
app.use(cookieParser());
//middleware to config sesssion data
app.use(
  sessions({
    secret: "mysecretcode",
    saveUninitialized: true,
    cookie: { maxAge: oneHour },
    resave: false,
  })
);
app.use(flash());
app.set("view engine", "ejs");
//middleware
// Add this middleware to serve static files
app.use(express.static("uploads"));
app.use(express.static(path.join(__dirname, "./public")));
app.use(express.urlencoded({ extended: true }));

app.use("/", homeRoute);
app.use("/", discoverRoute);
app.use("/", genresRoute);
app.use("/", artistsRoute);
app.use("/", artistrecordsRoute);
app.use("/", allcollectionRoute);
app.use("/", collectionRoute);
app.use("/", recordRoute);
app.use("/", loginRoute);
app.use("/", registerRoute);
app.use("/", dashboardRoute);
app.use("/", libraryRoute);
app.use("/", addcollectionRoute);
app.use("/", settingRoute);
app.use("/", logoutRoute);
app.use("/", addnewcollectionRoute);
app.use("/", editcollnameRoute);
app.use("/", editrecordRoute);
app.use("/", myprofileRoute);

app.use(globalErrHandler);

const server = app.listen(PORT, () => {
  console.log(`API started on port ${server.address().port}`);
});
