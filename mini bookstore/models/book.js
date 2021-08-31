const db = require('../util/database');

class Book 
{
    constructor(title, price, description, author, cover)
    {
        this.title = title;
        this.price = price;
        this.description = description;
        this.author = author;
        this.cover = cover;
    }

    save(genre)
    {
        db.execute(`INSERT INTO ${genre}(title, price, description, author, cover, table_name) values(?, ?, ?, ?, ?, ?)`, [this.title, this.price, this.description, this.author, this.cover, genre])
        .then(result => 
            {
                console.log('Created Successfully');
            })
        .catch(err => console.log(err))
    }

    static getTop()
    {
        return db.execute(`SELECT * FROM top_books`);
    }

    static getScience() 
    {
        return db.execute(`SELECT * FROM popular_science`);
    }

    static getThriller() 
    {
        return db.execute(`SELECT * FROM thrillers`);
    }

    static getBiography() 
    {
        return db.execute(`SELECT * FROM biographies`);
    }

    static getOne(id, table)
    {
     // console.log('konzola ', id)
        return db.execute(`SELECT * FROM ${table} WHERE id = ${id}`)
    }
}

module.exports = Book;