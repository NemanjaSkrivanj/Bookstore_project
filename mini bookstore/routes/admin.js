const express = require('express');

const adminController = require('../controllers/admin')

const router = express.Router();

router.get('/admin/add-product', adminController.addProduct)
router.post('/admin/add-product', adminController.postAddProduct )

module.exports = router;