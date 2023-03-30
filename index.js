/**
 * Hello World
 */
const express = require("express");
const app = express();

app.get("/about", (req, res) => {
  res.status(200).send("Hello World !!!!");
});

app.listen(3000, function () {
  console.log("App listening on port 3000!");
});

//
