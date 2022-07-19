"use strict";

const express = require("express");
const bodyParser = require("body-parser");
const routeMovies = require('./routes/routeMovies');
const routeComments = require('./routes/routeComments');
const routeUsers = require('./routes/routeUsers');
var app = express();
var host = "127.0.0.1";
var port = 8083;
var startPage = "index.html";

app.use(express.static("./public"));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());


routeMovies.routeMovies(app);
routeComments.routeComments(app);
routeUsers.routeUsers(app);

function gotoIndex(req, res) {
    console.log(req.params);
    res.sendFile(__dirname + "/" + startPage);
}

app.get("/" + startPage, gotoIndex);

app.route("/");

var server = app.listen(port, host, function() {
    var host = server.address().address;
    var port = server.address().port;

    console.log("Example app listening at http://%s:%s", host, port);
});
