CREATE DATABASE library_Management;

USE library_Management;

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    status ENUM('available', 'borrowed') DEFAULT 'available'
);

INSERT INTO books (title, status)
VALUES
('Introduction to Java', 'available'),
('Data Structures and Algorithms using C++', 'available'),
('Database Management Systems', 'available'),
('Operating System', 'available'),
('C++ OOPS Concepts', 'available'),
('C Programming','available');

INSERT INTO books (title, status)
VALUES ('OOP in Java','available');

set SQL_SAFE_UPDATES = 0;
