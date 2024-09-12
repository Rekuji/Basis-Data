CREATE TABLE employees(
	emp_id varchar(5), emp_name varchar(50), age int
);
SELECT emp_id, emp_name, age FROM pertemuan2.employees;

INSERT INTO employees (emp_id, emp_name, age)
VALUES (123,'budi',21); 

ALTER TABLE employees add primary key (emp_id);

INSERT INTO employees (emp_id, emp_name, age)
VALUES (211,'Mulya',21); 
INSERT INTO employees (emp_id, emp_name, age)
VALUES (212,'Dewi',22); 
INSERT INTO employees (emp_id, emp_name, age)
VALUES (213,'Ayu',23); 

ALTER TABLE employees ADD status varchar(1);
#Kolum baru "status" dibuat untuk menandakan bahwa row tersebut dihapus atau tidak

UPDATE employees
SET status = 1; 
#semua data dalam kolum status diberi tanda 1 untuk menandakan bahwa data-data tersebut masih ada

SELECT emp_id, emp_name, age FROM pertemuan2.employees
WHERE status is null;
#Syntax ini seakan-akan memperlihatkan data yang sudah dihapus.

SELECT emp_id, emp_name, age FROM pertemuan2.employees
WHERE status is not null;
#Syntax ini digunakan untuk memperlihatkan restored data dari yang sudah diapus. 