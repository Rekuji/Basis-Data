CREATE TABLE employees(
	emp_id varchar(5), emp_name varchar(50), age int
);
SELECT * FROM pertemuan2.employees;

INSERT INTO employees (emp_id, emp_name, age)
VALUES (123,'budi',21); 

ALTER TABLE employees add primary key (emp_id);

INSERT INTO employees (emp_id, emp_name, age)
VALUES (123,'Arief',24); 

#Kesimpulannya jika suatu kolom dijadikan primary key, maka data diantara kolom tersebut tidak bisa duplikat 