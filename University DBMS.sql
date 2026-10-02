CREATE DATABASE university;

USE University;

-- ii) Create the Student table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    gender VARCHAR(10),
    programme VARCHAR(50),
    year_of_study INT,
    age INT,
    marks INT,
    town VARCHAR(50)
);

-- Insert the Data
INSERT INTO students VALUES
(101, 'Sarah Nakato', 'Female', 'BSIT', 1, 19, 78, 'Mukono'),
(102, 'John Kato', 'Male', 'DIT', 2, 22, 65, 'Kampala'),
(103, 'Mary Achieng', 'Female', 'BSIT', 3, 24, 88, 'Jinja'),
(104, 'David Ouma', 'Male', 'BSE', 1, 20, 54, 'Mukono'),
(105, 'Peter Ssenyonga', 'Male', 'BSIT', 2, 23, 72, 'Kampala'),
(106, 'Grace Namusoke', 'Female', 'DIT', 1, 20, 47, 'Entebbe'),
(107, 'Brian Okello', 'Male', 'BSE', 3, 25, 91, 'Jinja'),
(108, 'Ruth Nakanwagi', 'Female', 'BSIT', 2, 21, 83, 'Mukono'),
(109, 'Samuel Mugisha', 'Male', 'DIT', 3, 24, 69, 'Kampala'),
(110, 'Esther Atim', 'Female', 'BSE', 1, 19, 76, 'Gulu');

--i) Select all students from the table
SELECT * FROM students;

--ii) Evoke all the attributes ,  data types and constraints from the student entity.
DESCRIBE students; 

--iii) 3.	Display only the student name, programme and marks. 
SELECT student_name, programme, marks FROM students;

--iv) 4.	Display the names and towns of all students.
SELECT student_name, town FROM students;

--i.	Retrieve all columns and specific rows from the students entity  
SELECT * FROM students WHERE student_id IN (101, 102, 103);


--ii.	Retrieve specific columns and specific rows from the students entity 
SELECT student_name, programme FROM students WHERE student_id IN (101, 102, 103);

--iii. 	Retrieve specific columns and all rows from the students entity  
SELECT student_name, programme FROM students;   

-- 4.	Display all students who are taking BSIT. 
SELECT * FROM students WHERE programme = 'BSIT';


-- 5.	Display all students who scored 70 marks or more. 
SELECT * FROM students WHERE marks >= 70;

-- 6.	Display all students from Mukono. 
SELECT * FROM students WHERE town = 'Mukono';

-- 7.	Display all female students
SELECT * FROM students WHERE gender = 'Female';

-- 8.	Find all BSIT students who scored more than 75 marks. 
SELECT * FROM students WHERE programme = 'BSIT' AND marks > 75;

-- 9.	Find all students who are either from Mukono or Kampala.
SELECT * FROM students WHERE town = 'Mukono' OR town = 'Kampala';

-- 10.	Find all female students who are in Year 1. 
SELECT * FROM students WHERE gender = 'Female' AND year_of_study = 1;

-- 11.	Find students whose marks are between 60 and 80. 
SELECT * FROM students WHERE marks BETWEEN 60 AND 80;

-- 12.	Find students who are not taking BSE. 
SELECT * FROM students WHERE programme != 'BSE';

-- 13. Display all students from the highest marks to the lowest marks. 14. Display all students from the lowest marks to the highest marks. 
SELECT * FROM students ORDER BY marks DESC;

-- 15. Display BSIT students and arrange them from the highest marks to the lowest marks. 
SELECT * FROM students WHERE programme = 'BSIT' ORDER BY marks DESC;

-- Challenge 1 
-- Which female BSIT students scored at least 80 marks? Write a query that answers the question. 
SELECT * FROM students WHERE gender = 'Female' AND programme = 'BSIT' AND marks >= 80;

-- Challenge 2 
-- Find students who are in Year 2 AND scored more than 70 marks. 
SELECT * FROM students WHERE year_of_study = 2 AND marks > 70;

-- Challenge 3 
-- Show students from Mukono who scored below 60 OR students from Jinja who scored above 80. 
SELECT * FROM students WHERE (town = 'Mukono' AND marks < 60) OR (town = 'Jinja' AND marks > 80);

/*
Student Reflection 
1.	Which query did your group find most challenging, and why? 
Which query did your group find most challenging, and why?
 Challenge 3 was the most challenging because it required combining AND and OR logical operators.

2.	What mistake did you make or discover while testing your queries? 
Forgetting to enclose string values (like 'BSIT') in single quotes

3.	Explain one situation in a real organisation where filtering database records would be useful. 
In a university academic registration office, filtering database records is necessary for generating targeted student list reports

*/