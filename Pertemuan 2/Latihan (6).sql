CREATE TABLE employees(
	emp_id varchar(5), emp_name varchar(50), age int
);
SELECT emp_id, emp_name, age FROM pertemuan2.employees;

INSERT INTO employees (emp_id, emp_name, age)
VALUES (123,'budi',21); 

ALTER TABLE employees add primary key (emp_id);

INSERT INTO employees (emp_id, emp_name, age)
VALUES (124,'Budi B',21); 
INSERT INTO employees (emp_id, emp_name, age)
VALUES (244,'Dani',23); 
INSERT INTO employees (emp_id, emp_name, age)
VALUES (134,'Budi A',24); 
INSERT INTO employees (emp_id, emp_name, age)
VALUES (144,'Intan',20); 
INSERT INTO employees (emp_id, emp_name, age)
VALUES (155,'Budi W',25); 

SELECT emp_id, emp_name, age FROM employees
WHERE emp_name like '%Budi%' AND age > 21;

SELECT emp_id, emp_name, age FROM employees
WHERE age BETWEEN 22 AND 24;

