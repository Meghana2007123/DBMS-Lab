mysql> SELECT*FROM student12;
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  1 | Akash | BCA        |    85 | Koppal     |
|  2 | Ravi  | BCA        |    75 | Gangavathi |
|  3 | Priya | BCom       |    90 | Koppal     |
|  4 | Manoj | BCA        |    60 | Yelburga   |
|  5 | Anu   | BCom       |    80 | Koppal     |
|  6 | Kiran | BCA        |    96 | Gangavathi |
+----+-------+------------+-------+------------+
6 rows in set (0.00 sec)

mysql> SELECT*FROM student12
    -> WHERE marks>(SELECT AVG(marks)FROM student12);
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  1 | Akash | BCA        |    85 | Koppal     |
|  3 | Priya | BCom       |    90 | Koppal     |
|  6 | Kiran | BCA        |    96 | Gangavathi |
+----+-------+------------+-------+------------+
3 rows in set (0.03 sec)
mysql> SELECT*FROM student12
    -> WHERE marks=(SELECT MAX(marks)FROM student12);
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  6 | Kiran | BCA        |    96 | Gangavathi |
+----+-------+------------+-------+------------+
1 row in set (0.01 sec)
mysql> SELECT*FROM student12
    -> WHERE department=(
    -> SELECT department
    -> FROM student12
    -> WHERE name='Akash'
    -> );
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  1 | Akash | BCA        |    85 | Koppal     |
|  2 | Ravi  | BCA        |    75 | Gangavathi |
|  4 | Manoj | BCA        |    60 | Yelburga   |
|  6 | Kiran | BCA        |    96 | Gangavathi |
+----+-------+------------+-------+------------+
4 rows in set (0.00 sec)

mysql> SELECT*FROM student12
    -> WHERE marks>(
    -> SELECT marks
    -> FROM student12
    -> WHERE name='Ravi'
    -> );
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  1 | Akash | BCA        |    85 | Koppal     |
|  3 | Priya | BCom       |    90 | Koppal     |
|  5 | Anu   | BCom       |    80 | Koppal     |
|  6 | Kiran | BCA        |    96 | Gangavathi |
+----+-------+------------+-------+------------+
4 rows in set (0.00 sec)
mysql> SELECT MAX(marks)
    -> FROM student12
    -> WHERE marks<(
    -> SELECT MAX(marks)
    -> FROM student12
    -> );
+------------+
| MAX(marks) |
+------------+
|         90 |
+------------+
1 row in set (0.00 sec)
