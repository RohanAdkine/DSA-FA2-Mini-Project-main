// script.js

// Base API URL
const API_URL = 'http://localhost:3000';

// Utility function to update output messages
function output(message) {
    document.getElementById('output').innerText = message;
}

// Fetch all books from the server
async function displayAllBooks() {
    try {
        const response = await fetch(`${API_URL}/books`);
        const books = await response.json();

        if (books.length === 0) {
            output('No books available.');
        } else {
            document.getElementById('allBooksTitle').style.display = 'block';
            document.getElementById('bookList').style.display = 'block';
            document.getElementById('bookList').innerHTML = books.map(book => `<li>${book.title} (${book.status})</li>`).join('');
        }
    } catch (error) {
        output('Error fetching books: ' + error.message);
    }
}

// Search for a book
async function searchBook() {
    const query = document.getElementById('searchQuery').value;
    if (!query.trim()) {
        output('Please enter a valid search query.');
        return;
    }

    try {
        const response = await fetch(`${API_URL}/books/search?q=${query}`);
        const results = await response.json();

        if (results.length === 0) {
            output('No books found.');
        } else {
            document.getElementById('searchResultsTitle').style.display = 'block';
            document.getElementById('searchResultList').style.display = 'block';
            document.getElementById('searchResultList').innerHTML = results.map(book => `<li>${book.title} (${book.status})</li>`).join('');
        }
    } catch (error) {
        output('Error searching for books: ' + error.message);
    }
}

// Borrow a book
async function requestToBorrowBook() {
    const bookTitle = document.getElementById('bookTitle').value;
    if (!bookTitle.trim()) {
        output('Please enter a valid book title.');
        return;
    }

    try {
        const response = await fetch(`${API_URL}/books/borrow`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ title: bookTitle })
        });

        if (response.ok) {
            const message = await response.text();
            output(message);
            displayAllBooks();
        } else {
            const error = await response.text();
            output('Error: ' + error);
        }
    } catch (error) {
        output('Error borrowing book: ' + error.message);
    }
}

// Return a book
async function returnBook() {
    const bookTitle = document.getElementById('bookTitle').value;
    if (!bookTitle.trim()) {
        output('Please enter a valid book title.');
        return;
    }

    try {
        const response = await fetch(`${API_URL}/books/return`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ title: bookTitle })
        });

        if (response.ok) {
            const message = await response.text();
            output(message);
            displayAllBooks();
        } else {
            const error = await response.text();
            output('Error: ' + error);
        }
    } catch (error) {
        output('Error returning book: ' + error.message);
    }
}
