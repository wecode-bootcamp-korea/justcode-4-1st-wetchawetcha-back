const express = require('express');
const router = express.Router();

const UserController = require('../controllers/UserController');
router.post('/', UserController.signUp);
router.get('/', UserController.getUser);

module.exports = router;
