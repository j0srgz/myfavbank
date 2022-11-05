const express = require('express');
const pool = require('../database');
const crypto = require('crypto');
const router = express.Router();
const { userValid } = require('../ext/auth');

router.get('/main', userValid, async(req, res) => {
    const cuenta = await pool.query('SELECT * FROM cuentas WHERE user_id =?', [req.user.id]);
    res.render('account.hbs', {user: req.user, cuenta: cuenta[0]});
})

router.get('/transfer', userValid, async (req, res) => {
    const cuenta = await pool.query('SELECT * FROM cuentas WHERE user_id =?', [req.user.id]); 
    res.render('transfer.hbs', {cuenta: cuenta[0]});
})

router.post('/transfer', async (req, res) => {
    const ctaemisora = await pool.query('SELECT * FROM cuentas WHERE nrocuenta =?', [req.body.ctaemisora]);
    const ctareceptora = await pool.query('SELECT * FROM cuentas WHERE nrocuenta =?', [req.body.ctareceptora]);
    const monto = Number(req.body.monto)
    if (ctareceptora.length > 0){
        if (monto > 1){
            if (monto > ctaemisora[0].saldo){
                const cuenta = await pool.query('SELECT * FROM cuentas WHERE user_id =?', [req.user.id]);
                req.flash('failure', 'Saldo insuficiente')
                res.redirect('/transfer');
            }else{
                const transfer = {id_emisora: ctaemisora[0].user_id, monto, id_receptor: ctareceptora[0].user_id, ref: crypto.randomBytes(5).toString('hex')}
                saldoctaemisora = ctaemisora[0].saldo - monto;
                saldoctareceptora = ctareceptora[0].saldo + monto;
                await pool.query('UPDATE cuentas SET saldo=? WHERE id=?', [saldoctaemisora, ctaemisora[0].id]);
                await pool.query('UPDATE cuentas SET saldo=? WHERE id=?', [saldoctareceptora, ctareceptora[0].id]);
                const ref = await pool.query('INSERT INTO transfers SET ?', [transfer]);
                res.redirect(`/references/${ref.insertId}`)
            }
        }else{
            req.flash('failure', 'El monto a transferir debe ser mayor a 1$')
            res.redirect('/transfer')
        }
    }else{
        const cuenta = await pool.query('SELECT * FROM cuentas WHERE user_id =?', [req.user.id]) 
        req.flash('failure', 'La cuenta ingresada no existe');
        res.redirect('/transfer');
    }
})

router.get('/references/:id', userValid, async (req, res) => {
    const id = req.params.id;
    const reference = await pool.query('SELECT * FROM transfers WHERE id=?', [id]);
    if (reference.length > 0){
        if (reference[0].id_emisora === req.user.id || reference[0].id_receptor === req.user.id){
            const ctaemisora = await pool.query('SELECT * FROM cuentas WHERE user_id=?', [reference[0].id_emisora]);
            const ctareceptora = await pool.query('SELECT * FROM cuentas WHERE user_id=?', [reference[0].id_receptor]);
            res.render('reference.hbs', {ref: reference[0], ctaemisora: ctaemisora[0], ctareceptora: ctareceptora[0]});
        }else{
            req.flash('failure', 'Acceso denegado');
            res.redirect('/main');
        }
    }else{
        req.flash('failure', 'La referencia seleccionada no existe');
        res.redirect('/main');
    }})

    router.get('/history', userValid, async (req, res) => {
        const id = req.user.id;
        const transacciones = await pool.query('SELECT * FROM transfers WHERE id_emisora=? OR id_receptor=?', [id, id]);
        res.render('history.hbs', {transacciones: transacciones})
    })

    router.use((req, res) => {
        res.status(404).render('error404.hbs')
    })

module.exports = router;