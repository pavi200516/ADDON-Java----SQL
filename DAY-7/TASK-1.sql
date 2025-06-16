CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    course_fee DECIMAL(10, 2)
);


INSERT INTO student (student_id, student_name, age) VALUES
(1, 'pavithra', 20),
(2, 'swetha', 22),
(3, 'siva', 19),
(4, 'Nafeesha', 21),
(5, 'Inshira', 23);


INSERT INTO course (course_id, course_name, course_fee) VALUES
(101, 'Data Analyst', 2000.00),
(102, 'Data Scientist', 1500.00),
(103, 'Data Structures', 2000.00),
(104, 'Web Development', 1999.00),
(105, 'Full stack', 800.00);


UPDATE course
SET course_fee = 2500.00
WHERE course_name = 'Data Analyst';
