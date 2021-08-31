const express = require('express');

const bookstoreController = require('../controllers/bookstore')

const router = express.Router();

router.get('/', bookstoreController.getTopBooks)
router.get('/popular-science', bookstoreController.getScience)
router.get('/biographies', bookstoreController.getBiographies)
router.get('/thrillers', bookstoreController.getThrillers)
router.get('/cart-page', bookstoreController.getCart)

router.get('/:productID', bookstoreController.getDetails)

module.exports = router;