mysql> use college;
Database changed
mysql> CREATE TABLE student(
    -> id INT PRIMARY KEY,
    ->  name VARCHAR(50),
    -> department VARCHAR(30),
    -> marks INT,
    -> city VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.44 sec)

mysql> INSERT INTO student VALUES
    ->
    -> (1, 'Akash', 'BCA', 85, 'Koppal'),
    -> (2, 'Ravi', 'BCA', 75, 'Gangavathi'),
    -> (3, 'Priya', 'BCom', 90, 'Koppal'),
    -> (4, 'Anu', 'BCom', 80, 'Koppal'),
    -> (5, 'manoj', 'bca', 95, 'yelburga'),
    -> (6, 'Kiran', 'BCA', 96, 'Gangavathi');
Query OK, 6 rows affected (0.26 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT*FROM student;
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  1 | Akash | BCA        |    85 | Koppal     |
|  2 | Ravi  | BCA        |    75 | Gangavathi |
|  3 | Priya | BCom       |    90 | Koppal     |
|  4 | Anu   | BCom       |    80 | Koppal     |
|  5 | manoj | bca        |    95 | yelburga   |
|  6 | Kiran | BCA        |    96 | Gangavathi |
+----+-------+------------+-------+------------+
6 rows in set (0.01 sec)

mysql> CREATE TABLE department(
    -> dept_id INT PRIMARY KEY,
    -> department VARCHAR(30),
    -> location VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.29 sec)

mysql> INSERT INTO department VALUES
    -> (1,'BCA','Block A'),
    -> (2,'BCom','Block B'),
    -> (3,'BBA','Block C');
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT student.name,
    -> student.department,
    -> department.location
    -> FROM student
    -> INNER JOIN department
    -> ON student.department=department.department;
+-------+------------+----------+
| name  | department | location |
+-------+------------+----------+
| Akash | BCA        | Block A  |
| Ravi  | BCA        | Block A  |
| Priya | BCom       | Block B  |
| Anu   | BCom       | Block B  |
| manoj | bca        | Block A  |
| Kiran | BCA        | Block A  |
+-------+------------+----------+
6 rows in set (0.07 sec)
mysql> SELECT student.name,
    -> department.location
    -> FROM student
    -> LEFT JOIN department
    -> ON student.department=department.department;
+-------+----------+
| name  | location |
+-------+----------+
| Akash | Block A  |
| Ravi  | Block A  |
| Priya | Block B  |
| Anu   | Block B  |
| manoj | Block A  |
| Kiran | Block A  |
+-------+----------+
6 rows in set (0.01 sec)

mysql> SELECT student.name,
    -> department.department
    -> FROM student
    -> RIGHT JOIN department
    -> ON student.department=department.department;
+-------+------------+
| name  | department |
+-------+------------+
| Kiran | BCA        |
| manoj | BCA        |
| Ravi  | BCA        |
| Akash | BCA        |
| Anu   | BCom       |
| Priya | BCom       |
| NULL  | BBA        |
+-------+------------+
7 rows in set (0.00 sec)

mysql> SELECT student.name,
    -> department.department
    -> FROM student
    -> CROSS JOIN department;
+-------+------------+
| name  | department |
+-------+------------+
| Akash | BBA        |
| Akash | BCom       |
| Akash | BCA        |
| Ravi  | BBA        |
| Ravi  | BCom       |
| Ravi  | BCA        |
| Priya | BBA        |
| Priya | BCom       |
| Priya | BCA        |
| Anu   | BBA        |
| Anu   | BCom       |
| Anu   | BCA        |
| manoj | BBA        |
| manoj | BCom       |
| manoj | BCA        |
| Kiran | BBA        |
| Kiran | BCom       |
| Kiran | BCA        |
+-------+------------+
18 rows in set (0.00 sec)

mysql> SELECT A.name AS Student1,
    -> B.name AS Student2,
    -> A.department
    -> FROM student A
    -> JOIN student B
    -> ON A.department=B.department
    -> WHERE A.id<B.id;
+----------+----------+------------+
| Student1 | Student2 | department |
+----------+----------+------------+
| Akash    | Ravi     | BCA        |
| Akash    | manoj    | BCA        |
| Akash    | Kiran    | BCA        |
| Ravi     | manoj    | BCA        |
| Ravi     | Kiran    | BCA        |
| Priya    | Anu      | BCom       |
| manoj    | Kiran    | bca        |
+----------+----------+------------+
7 rows in set (0.02 sec)
