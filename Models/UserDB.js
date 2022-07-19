"use strict";
var db = require('../db-connection');
const User = require('../Models/user');

class userDB{
    
    getLoginCredentials(request, respond){
       var userid = request.body.userid;
       var password = request.body.password;
       var msg = "";

       var sql = "SELECT password FROM users WHERE user_id = ?";

        db.query(sql, [userid], function (error, result) {
            if(error){
                throw error;
            }
            else{
                if(result.length > 0){
                    if(password == result[0].password){
                        msg = "SUCCESS!";
                        console.log(msg);
                    }
                    else{
                        msg = "FAIL!";
                        console.log(msg);
                    }
                }
                else{
                    msg = "USER NOT FOUND!";
                        console.log(msg);
                }
                respond.json(prepareMessage(msg));
            }
          });
    }

    getAllUsers(request, respond){
        var sql = "SELECT * FROM movie_review.users";
        db.query(sql, function(error, result){
            if(error){
                throw error;
            }
            else{
                respond.json(result);
            }
        });
    }

     updateUserFirstName(request, respond){
       
        var userObject = new User(request.params.userid, request.body.firstname);

        var sql = "UPDATE movie_review.users SET first_name = ? WHERE user_id = ?";
        var values = [userObject.getFirstName(), userObject.getUserId()];
        db.query(sql, values, function (error, result) {
            if(error){
                throw error;
            }
            else{
                respond.json(result);
            }
          });
    }
    

}
function prepareMessage(msg){
    var obj = {"message": msg};
    return obj;
}

module.exports = userDB;