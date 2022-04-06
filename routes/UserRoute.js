const express = require('express');
const router = express.Router();

const UserController = require('../controllers/UserController');
const Authorization = require('../controllers/middlewares/Authorization')
router.post('/', Authorization.Authorization, UserController.signUp);
router.get('/', UserController.getUser);
router.post('/signin', UserController.signIn)

module.exports = router;
