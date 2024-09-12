CREATE DATABASE Pertemuan2;
USE pertemuan2;
CREATE TABLE employees(
	id INT AUTO_INCREMENT PRIMARY KEY, emp_id varchar(5), emp_name varchar(50), age int
);
SELECT * FROM pertemuan2.employees;
INSERT INTO employees (emp_id, emp_name, age)
VALUES (123,'budi',21); 
