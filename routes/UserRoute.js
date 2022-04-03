const express = require('express');
const router = express.Router();

const SignUpController = require('../controllers/SignUpController');

router.post('/signup', SignUpController.signUp);
router.get('/', SignUpController.getUser);

module.exports = router;
