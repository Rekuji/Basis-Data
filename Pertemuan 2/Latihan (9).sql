CREATE TABLE employees2(
	emp_id varchar(5), emp_name varchar(50), age int
);
SELECT emp_id, emp_name, age FROM pertemuan2.employees2;

INSERT INTO employees2 (emp_id, age) VALUES (335, 22);
SELECT emp_id, emp_name, age FROM pertemuan2.employees2;

SET AUTOCOMMIT = OFF;
COMMIT;

DELETE FROM employees2 WHERE emp_id = 335;
ROLLBACK;
SELECT emp_id, emp_name, age FROM pertemuan2.employees2;

#Penggunaan Commit dan Rollback adalah seperti save dalam sebuah game. Commit = menyimpan file, dan Rollback, load file.
