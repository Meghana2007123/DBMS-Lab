mysql> CREATE DATABASE college;
ERROR 1007 (HY000): Can't create database 'college'; database exists
mysql> use college;
Database changed
mysql> CREATE VIEW bca_students AS
    -> SELECT id,name,marks
    -> FROM student
    -> WHERE department='BCA';
Query OK, 0 rows affected (0.21 sec)

mysql> SELECT*FROM bca_students;
+----+-------+-------+
| id | name  | marks |
+----+-------+-------+
|  1 | Akash |    85 |
|  2 | Ravi  |    75 |
|  5 | manoj |    95 |
|  6 | Kiran |    96 |
+----+-------+-------+
4 rows in set (0.04 sec)

mysql> CREATE VIEW high_marks AS
    -> SELECT id,name,marks
    -> FROM student
    -> WHERE marks>80;
Query OK, 0 rows affected (0.09 sec)

mysql> SELECT*FROM high_marks;
+----+-------+-------+
| id | name  | marks |
+----+-------+-------+
|  1 | Akash |    85 |
|  3 | Priya |    90 |
|  5 | manoj |    95 |
|  6 | Kiran |    96 |
+----+-------+-------+
4 rows in set (0.00 sec)

mysql> CREATE OR REPLACE VIEW bca_students AS
    -> SELECT id,name,marks,city
    -> FROM student
    -> WHERE department='BCA';
Query OK, 0 rows affected (0.08 sec)

mysql> DROP VIEW bca_students;
Query OK, 0 rows affected (0.11 sec)
