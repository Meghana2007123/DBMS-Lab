mysql> CREATE TABLE employee(
    -> emp_id INT,
    -> emp_name VARCHAR(50),
    -> salary INT
    -> );
Query OK, 0 rows affected (0.43 sec)

mysql> ALTER TABLE employee
    -> ADD department VARCHAR(30);
Query OK, 0 rows affected (1.29 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE employee
    -> MODIFY salary DECIMAL(10, 2);
Query OK, 0 rows affected (1.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> RENAME TABLE employee TO staff;
Query OK, 0 rows affected (0.48 sec)

mysql> TRUNCATE TABLE staff;
Query OK, 0 rows affected (0.49 sec)

mysql> DROP TABLE staff;
Query OK, 0 rows affected (0.27 sec)