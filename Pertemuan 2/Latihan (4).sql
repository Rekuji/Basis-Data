CREATE TABLE employees(
	emp_id varchar(5), emp_name varchar(50), age int
);
SELECT * FROM pertemuan2.employees;

INSERT INTO employees (emp_id, emp_name, age)
VALUES (123,'budi',21); 

ALTER TABLE employees add primary key (emp_id);

INSERT INTO employees (emp_id, emp_name, age)
VALUES (134,'Arief',24); 
INSERT INTO employees (emp_id, emp_name, age)
VALUES (144,'Intan',20); 
INSERT INTO employees (emp_id, emp_name, age)
VALUES (154,'Ayu',21); 

#Data dapat dimasukkan. Kesimpulannya, jika column primary key diisi dengan data yang berbeda, maka akan bekerja.

DELETE FROM employees WHERE emp_id = 123;
DELETE FROM employees WHERE emp_name = 'Intan';
DELETE FROM employees WHERE age = 21;

#Data-data dapat dihapus dengan command DELETE dan WHERE dengan condition yang benar.