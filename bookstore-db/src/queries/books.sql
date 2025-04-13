-- Query to retrieve all books
SELECT * FROM book;

-- Query to retrieve books by a specific author
SELECT b.title, b.publication_year
FROM book b
JOIN book_author ba ON b.id = ba.book_id
JOIN author a ON ba.author_id = a.id
WHERE a.name = 'Author Name';

-- Query to count the number of books in each category
SELECT category, COUNT(*) AS book_count
FROM book
GROUP BY category;

-- Query to retrieve books published in a specific year
SELECT * FROM book
WHERE publication_year = 2023;

-- Query to retrieve books with a specific keyword in the title
SELECT * FROM book
WHERE title LIKE '%keyword%';

-- Query to retrieve the top 10 bestselling books
SELECT b.title, SUM(ol.quantity) AS total_sold
FROM book b
JOIN order_line ol ON b.id = ol.book_id
GROUP BY b.id
ORDER BY total_sold DESC
LIMIT 10;