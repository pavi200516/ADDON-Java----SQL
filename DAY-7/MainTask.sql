CREATE TABLE books (
  book_id INT PRIMARY KEY,
  title VARCHAR(50),
  author VARCHAR(50)
);

CREATE TABLE members (
  member_id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE borrow (
  borrow_id INT PRIMARY KEY,
  member_id INT,
  book_id INT
);


INSERT INTO books VALUES
(1, '1984', 'George Orwell'),
(2, 'Harry potter', 'J.K.Rowling'),
(3, 'My Secret Diary', 'Jacqueline Wilson');


INSERT INTO members VALUES
(1, 'pavithra'),
(2, 'Rehana'),
(3, 'swetha');

INSERT INTO borrow VALUES
(1, 2, 2),
(2, 3, 1),
(3, 1, 3);
