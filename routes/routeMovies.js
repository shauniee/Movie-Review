"use strict"
const moviesdb = require("../Models/MoviesDB");
var moviesDBObject = new moviesdb();
function routeMovies(app){
    app.route('/movies')
        .get(moviesDBObject.getAllMovies);
}
module.exports = {routeMovies};