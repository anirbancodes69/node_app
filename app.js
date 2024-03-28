const dotenv = require("dotenv");
dotenv.config({ path: "./config.env" });
const express = require("express");
const app = express();

app.set("view engine", "ejs");

app.get("/", (req, res) => {
  res.render("index");
});

app.listen(3000, () => {
  console.log("Node app listening on Port: 3000");
  console.log(process.env.MACHINE);
});
