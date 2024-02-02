const express = require('express')
const router = express.Router()
const connection = require('../database') 

router.get('/', function (req, res) { // Fix parentheses to curly braces
    res.render('register');
});

router.post('/', function (req, res) { 
    console.log(req.body)

    const sql = "INSERT INTO students VALUES(null,?,?,?,?,?,?)";
    const values = [
        req.body.email,
        req.body.first_name,
        req.body.last_name,
        req.body.reg_no,
        req.body.phone_number,
        req.body.password,

    ]

    connection.query(sql,values,function(err){
        if(err)
        {
            throw err;
            // res.status(500).send('Internal Server Error');
        }
        else
        {
            res.render('register')
        }
    })

    // connection.end();

});

router.post('/register', async (req, res) => {
    const { email, password, first_name, last_name, reg_no, phone_number } = req.body;
  
    try {
      const isAuthenticated = await authenticateUser(email, password, first_name, last_name, reg_no, phone_number);
  
      if (isAuthenticated) {
        req.session.userId = userId; // Store user ID in session (replace with actual userId)
        res.redirect('/dashboard'); // Redirect to dashboard page
      } else {
        res.render('register', { error: 'Invalid login credentials' });
      }
    } catch (error) {
      console.error(error);
      res.status(500).send('Internal Server Error');
    }
  });

module.exports = router;