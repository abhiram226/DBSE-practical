CREATE DATABASE IF NOT EXISTS bookflow_db;
USE bookflow_db;
CREATE TABLE books (
 book_id INT AUTO_INCREMENT PRIMARY KEY,
 title VARCHAR(255) NOT NULL,
 isbn VARCHAR(13) NOT NULL UNIQUE,
 published_year INT,
 CONSTRAINT chk_published_year CHECK (published_year < 2027)
);
CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE
);
DESCRIBE books;
DESCRIBE members;
INSERT INTO books(title,isbn,published_year)
VALUES
('solo leveling','800611224',1988),
('one peice','801323508',2008),
('the greatest estate developer','807352112',2018);
INSERT INTO members(full_name,email)
VALUES
('Abhiram','abhiram@example.com'),
('Arjun Reddy','arjun.reddy@example.com'),
('Sneha Nair','sneha.nair@example.com');

INSERT INTO books (title, isbn, published_year)
VALUES ('Fake Copy', '800611224', 2000);
INSERT INTO books (title, isbn, published_year)
VALUES (NULL, '999999999', 2010);