var express = require('express');
var bodyParser = require('body-parser');
var app = express();
var urlencodedParser = bodyParser.urlencoded({ extended: true }); // Fix typo here

var mysql = require('mysql');

var server = app.listen(5000, function () {
    console.log('Server is listening on port 8080');
});

app.use(bodyParser.json());
app.use(express.static('public'));
app.set("view engine", "pug");



const resgisterRouter = require('./routes/register');
app.use(express.json())
app.use(express.urlencoded({extended: true}))

app.use("/register", resgisterRouter);


const staffRouter = require('./routes/staff');
app.use(express.json())
app.use(express.urlencoded({extended: true}))

app.use("/staff", staffRouter);

app.get('/contact', function (req, res) { // Fix parentheses to curly braces
    res.render('contact');
});
