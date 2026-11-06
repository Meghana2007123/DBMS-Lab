CREATE DATABASE college;
USE college;
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(30),
marks INT,
city VARCHAR(30)
);
INSERT INTO student VALUES
(1, 'Akash', 'BCA', 85, 'Koppal'),
(2, 'Ravi', 'BCA', 75, 'Gangavathi'),
(3, 'Priya', 'BCom', 90, 'Koppal'),
(4, 'Manoj', 'BCA', 60, 'Yelburga'),
(5, 'Anu', 'BCom', 80, 'Koppal'),
(6, 'Kiran', 'BCA', 95, 'Gangavathi'); 
SELECT*FROM student;
