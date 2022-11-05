const express = require('express');
const passport = require('passport')
const auth = express.Router();

auth.get('/login', (req, res) => {
    res.render('./auth/login.hbs');
})

auth.get('/signup', (req, res) => {
    res.render('./auth/signup.hbs');
})

auth.post('/signup', passport.authenticate('signup', {
    successRedirect: '/login',
    failureRedirect: '/signup'
}))

auth.post('/login', passport.authenticate('login', {
    successRedirect: '/main',
    failureRedirect: '/login'
}))

auth.get('/logout', (req, res) => {
    req.logOut((err) => {
        if (err){
            console.log(err)
        }else{
            res.redirect('/');
        }
    })
})

module.exports = auth;