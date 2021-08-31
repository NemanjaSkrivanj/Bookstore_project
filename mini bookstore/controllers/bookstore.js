const Book = require('../models/book')

// getting the top books for the landing page 

exports.getTopBooks = (req, res, next) => 
{
    Book.getTop()
    .then(books => 
        {
            res.render('index', {
                books: books[0]
            })
        })
    .catch(err => console.log(err))
}

exports.getDetails = (req, res, next) => 
{
    const id = req.params.productID;
    const table = req.query.name;
    Book.getOne(id, table)
    .then(product => 
        {
            res.render('details', 
            {
                product: product[0][0]
            })
        })
    .catch(err => console.log(err))
}

exports.getCart = (req, res, nest) => 
{
    res.render('cart-page', {} );
}

exports.getScience = (req, res, next) => 
{
    Book.getScience()
    .then(books => 
        {
            res.render('popular-science', {
                books: books[0]
            } );
        })
    .catch(err => console.log(err))
}

exports.getThrillers = (req, res, next) => 
{
    Book.getThriller()
    .then(books => 
        {
            res.render('thrillers', {
                books: books[0]
            } );
        })
    .catch(err => console.log(err))
}

exports.getBiographies = (req, res, next) => 
{
    Book.getBiography()
    .then(books => 
        {
            res.render('biographies', {
                books: books[0]
            })
        })
    .catch(err => console.log(err))
}