const Router = require('express')
const router = new Router
const AuthController = require('../controllers/authController')
//const {body} = require('express-validator')

router.post('/login', AuthController.login)     

module.exports = router