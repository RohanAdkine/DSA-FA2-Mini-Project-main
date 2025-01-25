// server.js
const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
const PORT = 3000;

// Middleware setup
app.use(cors());
app.use(bodyParser.json());

// Database configuration
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Rohan@123', // Replace with your MySQL password
    database: 'library_Management',
});

db.connect(error => {
    if (error) {
        console.error('Failed to connect to the database:', error);
        return;
    }
    console.log('Connected to the MySQL database.');
});

// API Endpoints

// Fetch all books
app.get('/books', (req, res) => {
    const query = 'SELECT * FROM books';
    db.query(query, (error, results) => {
        if (error) {
            console.error('Error fetching books:', error);
            return res.status(500).json({ error: 'Failed to retrieve books' });
        }
        res.json(results);
    });
});

// Search books by title
app.get('/books/search', (req, res) => {
    const searchQuery = `%${req.query.q}%`;
    const query = 'SELECT * FROM books WHERE title LIKE ?';
    db.query(query, [searchQuery], (error, results) => {
        if (error) {
            console.error('Error searching for books:', error);
            return res.status(500).json({ error: 'Search operation failed' });
        }
        res.json(results);
    });
});

// Borrow a book
app.post('/books/borrow', (req, res) => {
    const { title } = req.body;
    const query = 'UPDATE books SET status = ? WHERE title = ? AND status = ?';
    db.query(query, ['borrowed', title, 'available'], (error, results) => {
        if (error) {
            console.error('Error borrowing book:', error);
            return res.status(500).json({ error: 'Failed to borrow book' });
        }
        if (results.affectedRows === 0) {
            return res.status(404).json({ error: 'Book not available or already borrowed' });
        }
        res.json({ message: 'Book borrowed successfully' });
    });
});

// Return a book
app.post('/books/return', (req, res) => {
    const { title } = req.body;
    const query = 'UPDATE books SET status = ? WHERE title = ? AND status = ?';
    db.query(query, ['available', title, 'borrowed'], (error, results) => {
        if (error) {
            console.error('Error returning book:', error);
            return res.status(500).json({ error: 'Failed to return book' });
        }
        if (results.affectedRows === 0) {
            return res.status(404).json({ error: 'Book not found or already available' });
        }
        res.json({ message: 'Book returned successfully' });
    });
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
