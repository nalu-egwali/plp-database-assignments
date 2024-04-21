
-- Create the Books database
CREATE DATABASE library;

-- switch to the library database
USE library;

-- create a books table
CREATE TABLE books (
	bookid INT PRIMARY KEY,
    title VARCHAR (100),
    author VARCHAR (100),
    genre VARCHAR (20),
    publication_year INT
    );

-- Populate the book table
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (1, 'Grand Master', 'Peter Park', 'fiction', 2000);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (2, 'Pakistan', 'Joe Els', 'History', 2000);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (3, 'Ben Nat', 'Ben Nat', 'Authobiography', 2020);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (4, 'A level Physics', 'Shan Sharma', 'Science', 2020);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (5, 'The Law', 'Shege Pro Max', 'Law', 2001);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (6, 'Basic Science', 'John Okeke', 'Science', 2020);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (7, 'The Commander', 'Agent Smith', 'fiction', 1999);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (8, 'My HeartBeat', 'Paul Nick', 'Romance', 2020);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (9, 'My Love', 'Mr Nat', 'Romance', 1999);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (10, 'Total Surrender', 'Shege Pro Max', 'Law', 2005);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (11, 'The Unforgetable', 'Peter Park', 'fiction', 2010);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (12, 'Popularity', 'Peter Park', 'fiction', 2002);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (13, 'A man of Words', 'Prof Chandus', 'fiction', 2020);
INSERT INTO books (bookid, title, author, genre, publication_year) VALUES (14, 'The tooth pick', 'Peter Park', 'fiction', 2000);

-- 1: Retrive all columes for the books published in the year 2020
SELECT * FROM books WHERE publication_year = 2020;

-- 2: Find the distinct genres available in the bookstore
SELECT DISTINCT genre FROM books;

-- 3: Alias the author column as book author in a query result
SELECT title, author AS bookauthor FROM books;

