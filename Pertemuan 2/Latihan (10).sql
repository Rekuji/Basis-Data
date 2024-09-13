CREATE TABLE golongan(
	gol varchar(5) PRIMARY KEY, name_gol varchar(15)
);

INSERT INTO golongan (gol, name_gol) VALUES ('I', 'Golongan I'); 
INSERT INTO golongan (gol, name_gol) VALUES ('II', 'Golongan II'); 
INSERT INTO golongan (gol, name_gol) VALUES ('III', 'Golongan III'); 
INSERT INTO golongan (gol, name_gol) VALUES ('IV', 'Golongan IV'); 
INSERT INTO golongan (gol, name_gol) VALUES ('V', 'Golongan V'); 

SELECT gol, name_gol FROM golongan;

CREATE TABLE employees(
	emp_id varchar(5), emp_name varchar(50), age int, gol varchar(5)
);

SELECT emp_id, emp_name, age, gol FROM pertemuan2.employees;

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

ALTER TABLE employees 
ADD CONSTRAINT FK_Employees 
FOREIGN KEY (gol)
REFERENCES golongan(gol); 

#Pada bagian ini, kita menggunakan alter table untuk mengubah field "gol" dalam tabel "employee" menjadi foreign key, 
#sekaligus membuat relasi foreign keynya ke field "gol" pada tabel "golongan".

