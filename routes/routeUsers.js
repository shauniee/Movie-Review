"use strict"

const userdb = require('../Models/userDB');

var usersDBObject = new userdb();

function routeUsers(app){
	app.route('/login')
		.post(usersDBObject.getLoginCredentials);
}
module.exports = {routeUsers};