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

INSERT INTO books (title, status)
VALUES
('Introduction to Algorithms', 'available'),
('Computer Networking: A Top-Down Approach', 'available'),
('The Art of Computer Programming', 'available'),
('Operating System Concepts', 'available'),
('Computer Organization and Design', 'available'),
('Digital Design and Computer Architecture', 'available'),
('Artificial Intelligence: A Modern Approach', 'available'),
('Discrete Mathematics and Its Applications', 'available'),
('Computer Systems: A Programmer\'s Perspective', 'available'),
('The Pragmatic Programmer', 'available'),
('Clean Code: A Handbook of Agile Software Craftsmanship', 'available'),
('Introduction to the Theory of Computation', 'available'),
('The Mythical Man-Month', 'available'),
('Software Engineering: A Practitioner\'s Approach', 'available'),
('Design Patterns: Elements of Reusable Object-Oriented Software', 'available'),
('Patterns of Enterprise Application Architecture', 'available'),
('Operating Systems: Design and Implementation', 'available'),
('Programming Pearls', 'available'),
('Computer Architecture: A Quantitative Approach', 'available'),
('The Art of Computer Systems Performance Analysis', 'available'),
('Algorithms on Strings, Trees, and Sequences', 'available'),
('Computer Graphics: Principles and Practice', 'available'),
('The Algorithm Design Manual', 'available'),
('Modern Operating Systems', 'available'),
('The Design and Analysis of Algorithms', 'available'),
('Introduction to Machine Learning', 'available'),
('The Code Book', 'available'),
('Data Structures and Algorithm Analysis in C++', 'available'),
('C++ Programming: From Problem Analysis to Program Design', 'available'),
('Introduction to Computational Biology', 'available'),
('Network Security Essentials', 'available'),
('Database System Concepts', 'available'),
('Programming in C', 'available'),
('Python Programming: An Introduction to Computer Science', 'available'),
('The Elements of Computing Systems', 'available'),
('Artificial Intelligence: Foundations of Computational Agents', 'available'),
('Computational Intelligence: An Introduction', 'available'),
('Communication Networks: Fundamental Concepts and Key Architectures', 'available'),
('Linear Algebra and Its Applications', 'available'),
('Information Retrieval: Algorithms and Heuristics', 'available'),
('Understanding Machine Learning', 'available'),
('Fundamentals of Digital Logic with VHDL Design', 'available'),
('Database Management Systems', 'available'),
('Introduction to Embedded Systems', 'available'),
('Artificial Intelligence for Robotics', 'available'),
('Unix Programming Environment', 'available'),
('Principles of Compiler Design', 'available'),
('The Art of Unix Programming', 'available'),
('Database Design for Mere Mortals', 'available'),
('Foundations of Computer Science', 'available'),
('Automata and Computability', 'available'),
('High Performance Browser Networking', 'available'),
('Principles of Distributed Database Systems', 'available'),
('Computer Vision: Algorithms and Applications', 'available'),
('Introduction to Cryptography with Coding Theory', 'available'),
('Textbook of Computer Graphics', 'available'),
('Software Engineering: Theory and Practice', 'available'),
('Data Structures and Algorithms in Java', 'available'),
('Introduction to Bioinformatics', 'available'),
('Cryptography and Network Security', 'available'),
('Handbook of Computer Networks', 'available'),
('C# 7.0 in a Nutshell', 'available'),
('Object-Oriented Software Engineering', 'available'),
('TCP/IP Illustrated', 'available'),
('Network+ Guide to Managing and Troubleshooting Networks', 'available'),
('The Architecture of Computer Hardware and Systems Software', 'available'),
('Digital Signal Processing', 'available'),
('Introduction to Artificial Intelligence', 'available'),
('Introduction to Computer Vision', 'available'),
('Compiler Construction: Principles and Practice', 'available'),
('Machine Learning Yearning', 'available'),
('Practical Cryptography for Developers', 'available'),
('High Performance Computing: Paradigm and Infrastructure', 'available'),
('Modern Cryptography', 'available'),
('Advanced Compiler Design and Implementation', 'available'),
('Analysis of Algorithms', 'available'),
('Numerical Methods for Engineers', 'available'),
('Mastering Blockchain', 'available'),
('Data Mining: Concepts and Techniques', 'available'),
('The Art of Database Design', 'available'),
('The Linux Programming Interface', 'available'),
('The OpenGL® Graphics System', 'available'),
('Principles of Artificial Intelligence', 'available'),
('Java Concurrency in Practice', 'available'),
('Computer Vision: A Modern Approach', 'available'),
('An Introduction to Statistical Learning', 'available'),
('Machine Learning with Python', 'available'),
('Theory of Computing', 'available'),
('The Complete Reference: Java', 'available'),
('Introduction to Quantum Computing', 'available'),
('Fundamentals of Logic Design', 'available'),
('Computer Algorithms', 'available'),
('Blockchain Basics', 'available'),
('Advanced Data Structures', 'available'),
('Data Science from Scratch', 'available'),
('Understanding Computation', 'available'),
('Neural Networks and Deep Learning', 'available');

