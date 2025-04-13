-- SQL queries to retrieve and analyze data related to authors

-- Retrieve all authors
SELECT * FROM author;

-- Retrieve authors by a specific book
SELECT a.*
FROM author a
JOIN book_author ba ON a.id = ba.author_id
JOIN book b ON ba.book_id = b.id
WHERE b.title = 'Specific Book Title';

-- Count the number of books written by each author
SELECT a.id, a.name, COUNT(ba.book_id) AS book_count
FROM author a
LEFT JOIN book_author ba ON a.id = ba.author_id
GROUP BY a.id, a.name;

-- Retrieve authors with their corresponding books
SELECT a.name AS author_name, b.title AS book_title
FROM author a
JOIN book_author ba ON a.id = ba.author_id
JOIN book b ON ba.book_id = b.id
ORDER BY a.name;