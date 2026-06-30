CREATE DATABASE project;


CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    price DECIMAL(8,2),
    published_date DATE,
    in_stock INT DEFAULT 1
);

DESC Books;


INSERT INTO Books (title, isbn, price, published_date, in_stock)
VALUES
('apple','9781234567890',450.00,'2022-01-15',5),
('mango','9781234567891',550.00,'2021-06-10',3),
('java','9781234567892',350.00,'2019-08-25',0),
('python','9781234567893',600.00,'2023-03-18',8);

INSERT INTO Books (title, isbn, price, published_date)
VALUES
('World','9781234567894',400.00,'2018-12-20');

SELECT * FROM books;
DELETE FROM Books;
DROP TABLE Books;

ALTER TABLE Books
RENAME COLUMN title TO book_title;

ALTER TABLE Books
MODIFY COLUMN price FLOAT;

ALTER TABLE Books
ADD COLUMN author_name VARCHAR(50) NOT NULL DEFAULT 'Unknown';

UPDATE Books
SET price = price * 0.9
WHERE published_date < '1990-04-15'
AND book_id > 0;

DELETE FROM Books
WHERE in_stock = 0;

ALTER TABLE Books
AUTO_INCREMENT = 101;

SELECT
book_title,
price,
published_date
FROM Books
WHERE book_title LIKE '%History%'
AND price > 300
ORDER BY price DESC;

CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    join_date DATE NOT NULL DEFAULT (CURRENT_DATE)
);

INSERT INTO Members (member_name, join_date)
VALUES
('Manu','2024-01-10'),
('dany','2024-05-15'),
('durga','2023-11-20'),
('bujii','2024-09-05');

SELECT *
FROM Members
WHERE YEAR(join_date)=2024
ORDER BY member_name ASC;

SELECT * FROM Books;

SELECT * FROM Members;
