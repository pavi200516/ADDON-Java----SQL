CREATE TABLE Students (
    student_id int PRIMARY KEY,
    name varchar(100),
    class varchar(10)
);
INSERT INTO Students (student_id, name, class)
VALUES
(1, 'pavi', '12B'),
(2, 'swe', '12A'),
(3, 'siva', '12B');

CREATE TABLE Marks (
    mark_id int PRIMARY KEY,
    student_id int,
    subject varchar(50),
    marks int,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
INSERT INTO Marks (mark_id, student_id, subject, marks)
VALUES
(101, 1, 'Tamil', 85),
(102, 1, 'English', 90),
(103, 2, 'Tamil', 75),
(104, 2, 'English', 80),
(105, 3, 'Tamil', 95),
(106, 3, 'English', 88);

--join students and mark
SELECT s.student_id, s.name, s.class, m.subject, m.marks
FROM Students s
JOIN Marks m ON s.student_id = m.student_id;

--sub-query to find top performer
SELECT student_id, name, total_marks
FROM (
    SELECT s.student_id, s.name, SUM(m.marks) AS total_marks
    FROM Students s
    JOIN Marks m ON s.student_id = m.student_id
    GROUP BY s.student_id, s.name
) AS student_totals
ORDER BY total_marks DESC
LIMIT 1;

--join orders and customers
