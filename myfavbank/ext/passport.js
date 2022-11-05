const passport = require('passport');
const { generarhash, comprobar }= require('./handlebars');
const pool = require('../database');
const LocalStrategy = require('passport-local').Strategy;

passport.use('login', new LocalStrategy({
    usernameField: 'username',
    passwordField: 'password',
    passReqToCallback: true
}, async (req, username, password, done) => {
    user = await pool.query('SELECT * FROM users WHERE username =?', [username]);
    if (user.length > 0){
        const validarPass = await comprobar(password, user[0].password);
        if (validarPass){
            done(null, user);
        }else{
            done(null, false, req.flash('failure', 'La contraseña ingresada no es válida'));
        }
    }else{
        done(null, false, req.flash('failure', 'El nombre de usuario ingresado no existe'))
    }
}))

passport.use('signup', new LocalStrategy({
    usernameField: 'username',
    passwordField: 'password',
    passReqToCallback: true
}, async (req, username, password, done) => {
    const body = req.body;
    if (body.password === body.password2){
        const cuentavalida = await pool.query('SELECT * FROM cuentas WHERE nrocuenta =?', [body.nrocuenta]);
        if (cuentavalida.length > 0){
            if (cuentavalida.user_id){
                done(null, false, req.flash('failure', 'La cuenta ingresada ya está vinculada a un usuario'));
            }else{
            const newUser = {
                username,
                password,
            }
            newUser.password = await generarhash(password);
            await pool.query('INSERT INTO users SET ?', [newUser]);
            const user = await pool.query('SELECT * FROM users WHERE username =?', [username]);
            await pool.query('UPDATE cuentas SET user_id = ? WHERE nrocuenta =?', [user[0].id, body.nrocuenta]);
            done(null, user);
            }
        }else{
            done(null, false, req.flash('failure', 'La cuenta ingresada no es válida. Por favor, verifique'));
        }
    }else{
        done(null,false, req.flash('failure', 'Las contraseñas no coinciden, por favor verifique.'));
    }
}))

passport.serializeUser((user, done) => {
    done(null, user[0].id);
})

passport.deserializeUser(async (id, done) => {
    const user = await pool.query('SELECT * FROM users WHERE id=?', [id]);
    done(null, user[0]);
})

module.exports = passport