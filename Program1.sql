mysql> SELECT UPPER(name)FROM student;
+-------------+
| UPPER(name) |
+-------------+
| AKASH       |
| RAVI        |
| PRIYA       |
| MANOJ       |
| ANU         |
| KIRAN       |
+-------------+
6 rows in set (0.08 sec)

mysql> SELECT LOWER(name)FROM student;
+-------------+
| LOWER(name) |
+-------------+
| akash       |
| ravi        |
| priya       |
| manoj       |
| anu         |
| kiran       |
+-------------+
6 rows in set (0.03 sec)

mysql> SELECT name,LENGTH(name)FROM student;
+-------+--------------+
| name  | LENGTH(name) |
+-------+--------------+
| Akash |            5 |
| Ravi  |            4 |
| Priya |            5 |
| Manoj |            5 |
| Anu   |            3 |
| Kiran |            5 |
+-------+--------------+
6 rows in set (0.04 sec)

mysql> SELECT ROUND(85.678,2);
+-----------------+
| ROUND(85.678,2) |
+-----------------+
|           85.68 |
+-----------------+
1 row in set (0.04 sec)

mysql> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2026-10-16 09:24:02 |
+---------------------+
1 row in set (0.02 sec)

mysql> SELECT COUNT(*)FROM student;
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+
1 row in set (0.16 sec)

mysql> SELECT SUM(marks)FROM student;
+------------+
| SUM(marks) |
+------------+
|        485 |
+------------+
1 row in set (0.04 sec)

mysql> SELECT AVG(marks)FROM student;
+------------+
| AVG(marks) |
+------------+
|    80.8333 |
+------------+
1 row in set (0.02 sec)

mysql> SELECT MAX(marks)FROM student;
+------------+
| MAX(marks) |
+------------+
|         95 |
+------------+
1 row in set (0.04 sec)

mysql> SELECT MIN(marks)FROM student;
+------------+
| MIN(marks) |
+------------+
|         60 |
+------------+
1 row in set (0.00 sec)