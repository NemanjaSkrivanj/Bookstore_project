// adding the necessary third party packages, and spinning up a server

const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');

const bookstoreRoutes = require('./routes/bookstore');
const adminRoutes = require('./routes/admin')

const app = express();

// setting the view template to ejs

app.set('view engine', 'ejs');
app.set('views', 'views');


app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'logo')));

// importing the routes from the routes folder

app.use(bookstoreRoutes);
app.use(adminRoutes);


app.listen(3000);