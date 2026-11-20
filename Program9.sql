mysql> use college;
Database changed
mysql> DELIMITER//
    -> CREATE PROCEDURE get_student(IN sid INT)
    -> BEGIN
    -> DECLARE student_name VARCHAR(50);
    -> DECLARE CONTINUE HANDLER FOR NOT FOUND
    -> SET student_name='Student Not Found';
 SELECT name INTO student_name
    ->     FROM students
    ->     WHERE id = sid;
    ->     SELECT student_name AS Result;
    -> END //
DELIMITER;
mysql> CALL get_student(1);
+--------------+
| student_name |
+--------------+
| Rahul        |
+--------------+
1 row in set (0.02 sec)

Query OK, 0 rows affected (0.03 sec)

mysql>  CALL get_student(100);
+-------------------+
| student_name      |
+-------------------+
| Student Not Found |
+-------------------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)
