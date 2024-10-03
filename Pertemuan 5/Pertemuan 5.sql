CREATE DATABASE akademik;
USE akademik;

CREATE TABLE dosen (
  Nip varchar(12) NOT NULL,
  Nama_Dosen varchar(25) NOT NULL,
  PRIMARY KEY (Nip)
);

CREATE TABLE mahasiswa (
  Nim varchar(9) NOT NULL,
  Nama_Mhs varchar(25) NOT NULL,
  Tgl_Lahir date NOT NULL,
  Alamat varchar(50) NOT NULL,
  Jenis_Kelamin enum('Laki-laki','Perempuan') NOT NULL,
  IPK decimal (10,2),
  PRIMARY KEY (Nim)
);

CREATE TABLE matakuliah (
  Kode_MK varchar(6) NOT NULL,
  Nama_MK varchar(20) NOT NULL,
  Sks int(2) NOT NULL,
  PRIMARY KEY (Kode_MK)
); 

CREATE TABLE perkuliahan (
  Nim varchar(9) DEFAULT NULL,
  Kode_MK varchar(7) DEFAULT NULL,
  Nip varchar(12) DEFAULT NULL,
  Kehadiran decimal(6,2), 
  Nilai_Bobot char(1) NOT NULL,
  Nilai_Angka decimal(6,2), 
  Poin varchar(1),
  KEY Nip (Nip),
  KEY Nim (Nim),
  KEY Kode_MK (Kode_MK),
  CONSTRAINT perkuliahan_ibfk_1 FOREIGN KEY (Nip) REFERENCES dosen (Nip) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT perkuliahan_ibfk_2 FOREIGN KEY (Nim) REFERENCES mahasiswa (Nim) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT perkuliahan_ibfk_3 FOREIGN KEY (Kode_MK) REFERENCES matakuliah (Kode_MK) ON DELETE CASCADE ON UPDATE CASCADE
); 

DROP DATABASE akademik;

INSERT INTO dosen(NIP, Nama) VALUES ('0429038801', 'Mariana, S.Kom., MMSI.');

CREATE TABLE salary (
  NIP varchar(5),
  Gol varchar(2),
  GrossSal int(10),
  Tunjangan int(10),
  Salary int(10),
  PRIMARY KEY (NIP)
); 

INSERT 	INTO salary(NIP, Gol, GrossSal, Tunjangan) VALUES ('A001', 'A', 3500, 400), ('A002', 'B', 4500, 500); 

Select * FROM salary;

UPDATE Salary set salary = GrossSal + Tunjangan WHERE NIP = 'A001';

CREATE TABLE datkhdrn (
  NIM INT,
  Kode_MK varchar(10),
  Kehadiran INT(4),
  Nilai_Bobot varchar(2),
  Nilai_Angka DECIMAL(4,2),
  Poin int,
  PRIMARY KEY (Kode_MK)
); 

INSERT 	INTO datkhdrn(NIM, Kode_MK, Kehadiran, Nilai_Angka) VALUES (2023071003, 'INF-001', 90, 93.59), (2023071003, 'INF-002', 65, 82.71), (2023071003, 'INF-003', 75, 90.00), (2023071003, 'INF-004', 70, 85.00), (2023071003, 'INF-005', 80, 75.00); 
select * FROM datkhdrn;

UPDATE datkhdrn set Nilai_Angka = Nilai_angka*.65 WHERE Kehadiran < 75;

UPDATE datkhdrn set Nilai_Bobot = 'A' WHERE nilai_angka between 91 AND 100;
UPDATE datkhdrn set Nilai_Bobot = 'B' WHERE nilai_angka between 81 AND 90;
UPDATE datkhdrn set Nilai_Bobot = 'C' WHERE nilai_angka between 71 AND 80;
UPDATE datkhdrn set Nilai_Bobot = 'D' WHERE nilai_angka between 61 AND 70;
UPDATE datkhdrn set Nilai_Bobot = 'E' WHERE nilai_angka < 61;



DROP TABLE datkhdrn;