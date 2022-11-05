module.exports = {
    userValid: (req, res, next) => {
        if (req.isAuthenticated()){
            next();
        }else{
            req.flash('failure', 'Necesitas estar autenticado para realizar esta acción');
            res.redirect('/');
        }
    }
}