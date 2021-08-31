const Book = require('../models/book');

exports.addProduct = (req, res, next) => 
{
    res.render('admin/add-product', {})
}

exports.postAddProduct = (req, res, next) => 
{
    const title = req.body.title;
    const description = req.body.description;
    const price = req.body.price;
    const author = req.body.author;
    const cover = req.body.cover;
    const genre = req.body.genre;


    let book = new Book(title, price, description, author, cover)

    book.save(genre);
    res.redirect('back');
}