const encrypt = require('bcryptjs');
const moment = require('moment');
const helpers = {}

helpers.generarhash = async (password) => {
    const salt = await encrypt.genSalt(10);
    const hash = await encrypt.hash(password, salt);
    return hash;
}

helpers.comprobar = async (password, savedPassword) => {
    const isValid = await encrypt.compare(password, savedPassword);
    return isValid;
}

helpers.timestamp = (hora) => {
const time = moment(hora).format('DD-MM-YYYY HH:mm:ss')
return time
}

module.exports = helpers;