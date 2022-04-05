const express = require('express');
const router = express.Router();

const UserController = require('../controllers/UserController');
router.post('/', UserController.signUp);
router.get('/', UserController.getUser);
router.post('/signin',UserController.signIn)

module.exports = router;
