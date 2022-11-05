const express = require('express');
const app = express();
const morgan = require('morgan');
const sessions = require('express-session');
const { engine } = require('express-handlebars');
const passport = require('./ext/passport');
const { database } = require('./infodb');
const router = require('./src/mainfunct');
const crypto = require('crypto');
const mySQLstore = require('express-mysql-session');
const flash = require('connect-flash');
const auth = require('./src/authentication');
const PORT = process.env.PORT || 8080;

//Configuración
app.engine('.hbs', engine({
    defaultLayout: 'main',
    layoutsDir: './views/layouts',
    partialsDir: './views/partials',
    extname: '.hbs',
    helpers: require('./ext/handlebars')
}))
app.set('view engine', '.hbs');

//Middlewares
app.use(express.json());
app.use(express.urlencoded({extended: false}));
app.use(sessions({
    secret: crypto.randomBytes(20).toString("hex"),
    saveUninitialized: false,
    resave: false,
    store: mySQLstore(database)
}))
app.use(morgan('dev'));
app.use(passport.initialize())
app.use(passport.session());
app.use(flash())
app.use((req, res, next) => {
    app.locals.success = req.flash('success');
    app.locals.failure = req.flash('failure');
    app.locals.user = req.user;
    next();
})

//Routing
app.get('/', (req, res) => {
    res.render('path.hbs')
})
app.use(auth);
app.use(router);

//Ejecución del servidor
app.listen(PORT, () => {
    console.log(`El servidor está ejecutándose en el puerto ${PORT}`)
})