const express = require('express');
const router = express.Router();

const UsersController = require('../controllers/UsersController');
router.post('/', UsersController.signUp);
router.get('/', UsersController.getUser);

module.exports = router;
