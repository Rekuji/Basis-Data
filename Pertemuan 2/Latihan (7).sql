CREATE TABLE employees(
	emp_id varchar(5), emp_name varchar(50), age int, gol int
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

ALTER TABLE employees ADD Gol varchar(5);
UPDATE employees SET gol = 'I' WHERE emp_id = 124;
UPDATE employees SET gol = 'II' WHERE emp_id = 244;
UPDATE employees SET gol = 'III' WHERE emp_id = 134;
UPDATE employees SET gol = 'II' WHERE emp_id = 144;
UPDATE employees SET gol = 'I' WHERE emp_id = 155;

SELECT emp_id, emp_name, age, gol FROM pertemuan2.employees;

UPDATE employees SET gol = 'I';
SELECT emp_id, emp_name, age, gol FROM pertemuan2.employees;

#jika kita DELETE tanpa menggunakan WHERE maka semua data dalam kolum "gol" akan terhapus, makanya WHERE itu penting.

UPDATE employees SET gol = 'II' WHERE age BETWEEN 23 AND 25;
UPDATE employees SET gol = 'I' WHERE age NOT BETWEEN 23 AND 25;
UPDATE employees SET gol = 'II' WHERE emp_name BETWEEN 'Budi' AND 'Intan';
UPDATE employees SET gol = 'III' WHERE emp_id IN (155,124,134);
UPDATE employees SET gol = 'I' WHERE emp_name LIKE '%Budi%';
UPDATE employees SET gol = 'III' WHERE age AND emp_id LIKE '%2%';
