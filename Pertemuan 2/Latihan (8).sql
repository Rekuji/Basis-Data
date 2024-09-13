CREATE TABLE employees2(
	emp_id varchar(5), emp_name varchar(50), age int
);
SELECT emp_id, emp_name, age FROM pertemuan2.employees2;

INSERT INTO employees2 (emp_id, emp_name, age)
VALUES (333,'Makci',33); 

SELECT emp_id, emp_name, age FROM pertemuan2.employees2;

INSERT INTO employees2 (emp_id, emp_name, age)
SELECT emp_id, emp_name, age
FROM employees
WHERE emp_name LIKE '%Budi%';

SELECT emp_id, emp_name, age FROM pertemuan2.employees2;

# Pemindahan data dari tabel employees ke employees2 berhasil.

