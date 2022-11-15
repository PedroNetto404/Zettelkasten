# Estrutura
## Infos
created:: 03-10-2022 15:09
status:: #Zettel/NoteType/Fleeting
tags:: TI/DataScience/DataBases  
people::  
## Notes
+ Por padrão, todo banco de dados SQL Server é composto de dois arquivos: 
	+ Arquivo de dados
	+ Arquivo de Log

>USE master
>
> CREATE DATABASE bkBankAula10
	ON PRIMARY
	(NAME = 'bkBankAula10', 
	 FILENAME ='C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bkBankAula10.mdf',
	 SIZE = 10MB, MAXSIZE=20, FILEGROWTH=10%)
	 LOG ON
	 (NAME='bkBankAula10_log', 
	  FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bkBankAula10_log.ldf',
	  SIZE=10MB, MAXSIZE=200, FILEGROWTH=20%);
## References
1. ![[Slide21.JPG]]
2. ![[Slide22.JPG]]
3. ![[Slide23.JPG]]
4. ![[Slide24.JPG]]
5. ![[Slide25.JPG]]
6. ![[Slide26.JPG]]