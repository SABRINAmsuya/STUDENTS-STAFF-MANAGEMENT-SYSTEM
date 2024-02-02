const mysql = require('mysql');

const connection = mysql.createConnection({
    host:"localhost",
    user:"root",
    database_name:"student_staff",
    password:"",
    port:"3306",

})

connection.connect(function(error){
    if(error)
    {
        console.log(error);

    }
    else{

        console.log("connection ok..!")
    }
});
connection.end();

module.export = connection;