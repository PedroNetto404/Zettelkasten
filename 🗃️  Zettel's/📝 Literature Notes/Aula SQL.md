**Meta data**
Note-type:: #Zettel/NoteType/Literature
Note-Status:: #Zettel/Status/Pending 
Tags::
# SQL

# Tabelas
+ Podemos utilizar os comandos DDL para criar e alterar tabelas da seguinte forma: 
```sql
CREATE TABLE <table_name> (
<column_definition> [,...N]
); 

onde column_definition -> column_name column_data_type [NULL, NOT NULL]
```
+ Após criarmos a tabela, podemos criar restrições e alterar sua estrutura com o comando: 
```sql
ALTER TABLE <table_name>
	ADD CONSTRAINT <constraint_name>
		PRIMARY KEY / FOREIGN KEY
```

# Instrução select
```sql
SELECT <Column List>
FROM <table_name>
WHERE <where_criteria>
```
# Cláusula where
Com essa claúsula podemos obter um subconjunto de dados a partir dos dados informados; 
Ela sempre vem depois da claúsula from e antes do order by; 
O SGBD avalia cada linha da tabela e retorna a tupla caso a instruçãio where retorne true; 
Com instruções mais complexas podemos utilizar  os operadores lógicos OR e AND para compo-las; 
+ As principais implementaçãos da cláusula where são: 
	+ Operador de comparação; 
	+ Operador between
	+ Cláusula where com várias condições (and / or / not); 
	+ Pesquisa em uma lista de valores 
	+ pesquisa com caractere curinga;
Um exemplo utilizando o between: 
```sql
SELECT 
	AccountNumber, 
	SalesOrderId, 
	OrderDate
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '05/01/2007' AND '12/31/2007'
```
Podemos ler o between acima da seguinte forma: 
+ "Quero todas as datas que estão entre '05/01/2007' e '12/31/2007', considerando os extremos dos intervalos; 

# Order by
Podemos ordenar os dados resultantes de uma quey com o order by; 
Por default ele ascendente; 

## Ordenando pela posição da coluna
![[📂 Files/Pasted image 20221019184436.png]]
+ Se existem um índice clusterizado na tabela e o order by não é especificado, os dados vem da consulta com a ordem em que eles foram inseridos.

