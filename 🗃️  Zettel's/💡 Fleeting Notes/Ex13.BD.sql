CREATE DATABASE Ex13; 

USE Ex13; 

CREATE TABLE Mulher
(
	Mulher_Id	 INTEGER, 
	Nome_Mulher	 VARCHAR(100) NOT NULL, 
	CONSTRAINT pk_Mulher_Mulher_Id PRIMARY KEY (Mulher_Id)
);

CREATE TABLE Homem
(
	Homem_Id		INTEGER, 
	Nome_Homem		VARCHAR(100) NOT NULL, 
	Mulher_Id		INTEGER,
	CONSTRAINT pk_Homem_Homem_Id PRIMARY KEY (Homem_Id), 
	CONSTRAINT fk_Homem_Mulher_Id FOREIGN KEY (Mulher_Id) REFERENCES Mulher(Mulher_Id)
); 

--2
INSERT INTO Mulher
VALUES
	(1, 'Edna'),
	(2, 'Stefanny'), 
	(3, 'Cássia')

-- 1
INSERT INTO Homem
VALUES
	(10, 'Anderson', NULL), 
	(20, 'Jander', 1), 
	(30, 'Rogério', 2)

-- 3
--- a
SELECT
	h.Nome_Homem + ' casado com ' + m.Nome_Mulher
FROM
	Homem h
	INNER JOIN 
		Mulher m
	ON 
		h.Mulher_Id = m.Mulher_Id
--- d
SELECT
	h.Nome_Homem + ' casado com ' + m.Nome_Mulher
FROM
	Homem h
	JOIN 
		Mulher m
	ON 
		h.Mulher_Id = m.Mulher_Id
--- e
SELECT 
	h.Nome_Homem + ' possível casal com ' + m.Nome_Mulher
FROM	
	Homem h
	CROSS JOIN
		Mulher m

SELECT 
	h.Nome_Homem + ' possível casal com ' + m.Nome_Mulher
FROM	
	Homem h, Mulher m

-- 4
--- a
SELECT
	h.Nome_Homem + ' casado com ' + COALESCE(m.Nome_Mulher, 'ninguém')
FROM	
	Homem h
	LEFT JOIN 
		Mulher m
	ON 
		h.Mulher_Id = m.Mulher_Id
--- b
SELECT
	COALESCE(h.Nome_Homem, 'Ninguém') + ' é casado com ' + m.Nome_Mulher
FROM	
	Homem h
	RIGHT JOIN 
		Mulher m
	ON 
		h.Mulher_Id = m.Mulher_Id