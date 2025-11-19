-- ===============================
-- Student Course Management System
-- ===============================

-- 1. CREATE TABLES
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(30)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    credits INT
);

CREATE TABLE Enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- 2. INSERT SAMPLE DATA
INSERT INTO Students VALUES
(1, 'Lokesh Chowdary', 'CSE'),
(2, 'Pallavi', 'ECE'),
(3, 'Rahul', 'Mechanical');

INSERT INTO Courses VALUES
(101, 'Database Systems', 4),
(102, 'Java Programming', 3),
(103, 'Computer Networks', 3);

INSERT INTO Enrollments VALUES
(1001, 1, 101, 'A'),
(1002, 1, 102, 'B'),
(1003, 2, 101, 'A'),
(1004, 3, 103, 'C');

-- 3. BASIC QUERIES

-- Get all students
SELECT * FROM Students;

-- List of all courses
SELECT * FROM Courses;

-- Students from CSE department
SELECT student_name FROM Students
WHERE department = 'CSE';

-- 4. JOIN QUERIES

-- INNER JOIN: Show students and the courses they enrolled in
SELECT s.student_name, c.course_name, e.grade
FROM Enrollments e
INNER JOIN Students s ON e.student_id = s.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;

-- LEFT JOIN: Show all students and their enrolled courses (if any)
SELECT s.student_name, c.course_name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
LEFT JOIN Courses c ON e.course_id = c.course_id;

-- 5. GROUP BY QUERY

-- Count how many students enrolled in each course
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

