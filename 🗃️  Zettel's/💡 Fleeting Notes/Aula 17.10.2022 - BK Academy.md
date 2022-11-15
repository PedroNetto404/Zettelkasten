.

# Aula 17.10.2022 - BK Academy

**Meta data**
Note-type:: #Zettel/NoteType/Fleeting 
Note-Status:: #Zettel/Status/Pending  
Tags::  

# Operador Like
## sintaxe
```sql
match_expression [NOT] LIKE pattern [ESCAPE escape_character]
```
### Match_expression
+ Qualquer expressão válida do tipo string
### pattern
+ Cadeia de caracteres especícas 
### %
+ qualquer string de zero ou mais caracteres
+ ex: WHERE title LIKE '%computer%'
### _
+ um único caractere
+ WHERE au_fname LIKE '\_ean' --> encontrar nomes de quatro letras que terminam com ean (Dean, Sean)
### []
+ Qualquer caractere único dentro do intervalo especificado [a-f] ou conjuntos [aefcg]
### \[^\]
+ Qualquer caractere que não esteja dentro do intervalo especificado; 
### Escape
+ Podemos definir um caractere de escape
+ ex:
```sql
 WHERE comment LIKE '%30\%%' ESCAPE  '\'
```
## Exemplos: 
## Ex1:
```sql
SELECT *
FROM
	HumanResources.Department
WHERE
	Name LIKE 'Pr%';
```
![[Pasted image 20221017142841.png]]
## Ex2: 
```sql
SELECT 
	FirstName, MiddleName, LastName
FROM
	Person.Person
WHERE 
	LastName LIKE '[CH]%sen';
```
![[Pasted image 20221017143131.png]]

```sql
SELECT 
	FirstName, MiddleName, LastName
FROM
	Person.Person
WHERE 
	LastName LIKE '__o%';
```
![[Pasted image 20221017143238.png]]
```sql
SELECT 
	FirstName, MiddleName, LastName
FROM
	Person.Person
WHERE 
	LastName LIKE '____';
```
![[Pasted image 20221017143350.png]]

# Operador in
+ sintaxe
```sql
test_expres
```
## Exemplos
### Ex1: 
```sql
SELECT 
	SalesOrderDetailID,
	OrderQty, 
	ProductId, 
	ModifiedDate
FROM
	Sales.SalesOrderDetail
WHERE
	ProductID IN (776, 778, 747, 809)
```

![[Pasted image 20221017143737.png]]

```sql
SELECT 
	Name, ListPrice
FROM 
	Production.Product
WHERE
	Name IN ('Road Tire Tube', 'Touring Pedal', 'Minipump');
```

![[Pasted image 20221017143916.png]]
### Exemplo com subquery não correlacionada
```sql
SELECT DISTINCT
   TOP 5 SOH.CustomerId 
FROM
   Sales.SalesOrderHeader AS SOH 
   INNER JOIN
      Sales.SalesOrderDetail AS SOD 
      ON SOH.SalesOrderID = SOD.SalesOrderDetailID 
WHERE
   SOD.ProductID IN 
   (
      SELECT
         ProductId 
      FROM
         Production.Product 
      WHERE
         Name LIKE '%bike%' 
   )

```

![[Pasted image 20221017144730.png]]

+ O operador in tem restrições quando várias subconsultas são usadas
	+ Manipulação de valores NULL
		+ Um valor NULL em uma coluna significa que a coluna não tem valor
	+ Sempre que existem a possibilidade de a subconsulta trazer valores null e formos utilizar o NOT IN precisamos tratar o valor com o COALESCE, por exemplo.
```sql
SELECT 
	Name, Color
FROM
	Production.Product
WHERE
	COALESCE(Color, '') NOT IN ('White', 'Grey', COALESCE(NULL, '')); 
```

![[Pasted image 20221017145337.png]]

# Alias
```sql
SELECT
	DepartmentID, 
	Name AS "Nome do Departamento", 
	GroupName AS "Nome do Grupo de Depto"
FROM 
	HumanResources.Department AS d
```
![[Pasted image 20221017150209.png]]

# Join 
## Inner join 
+ Configura uma correspondência de igualdade entre duas ou mais tabelas; 
### Exemplo 
```sql 
SELECT
	p.FirstName, 
	p.LastName, 
	ea.EmailAddress
FROM 
	Person.Person p 
	INNER JOIN
		Person.EmailAddress ea
	ON
		(p.BusinessEntityID = ea.BusinessEntityID)
;
```

![[Pasted image 20221017150913.png]]

```sql
SELECT 
	p.ProductID "Código do Produto", 
	p.Name "Nome do Produto", 
	sd.OrderQty "Quantidade do Pedido", 
	sd.UnitPrice "Preço Unitário"
FROM 
	Production.Product p
	INNER JOIN
		Sales.SalesOrderDetail sd
	ON
		(P.ProductID = sd.ProductID); 
```

![[Pasted image 20221017151214.png]]

## Outer Joins

+ Existem dois tipos de outer joins (LEFT e RIGHT)

```sql
SELECT 
	p.ProductID, 
	p.Name, 
	sd.OrderQty, 
	sd.UnitPrice
FROM
	Production.Product p
	LEFT OUTER JOIN
		Sales.SalesOrderDetail sd
	ON
		(p.ProductID = sd.ProductID); 
```

![[Pasted image 20221017152051.png]]

## Limitando os dados

## Top
+ Limita o número de linhas retornadas em um resultado a uma quantidade específica ou a determinada
```sql
SELECT TOP(5)
	SalesOrderID, 
	OrderDate, 
	SalesOrderNumber, 
	TotalDue
FROM
	Sales.SalesOrderHeader
ORDER BY
	TotalDue DESC
```

![[Pasted image 20221017152526.png]]

## Distinct
+ Devemos ter cuidado ao utilizar, pois ele pode "maquear o relatório"
+ Retorna uma lista de valores únicos ou distintos de cada coluna especificada em uma instrução select
```sql
SELECT DISTINCT
	p.Name "Nome do Produto"
FROM 
	Production.Product p
	INNER JOIN 
		Sales.SalesOrderDetail sd
	ON (p.ProductID = sd.ProductID); 
```
![[Pasted image 20221017153035.png]]

## Null
```sql
SELECT DISTINCT
	p.Name "Nome do produto"
FROM
	Production.Product p
	INNER JOIN 
		Sales.SalesOrderDetail sd
	ON
		(p.ProductID = sd.ProductID)
WHERE 
	sd.CarrierTrackingNumber IS NULL
ORDER BY
	"Nome do produto"
```

![[Pasted image 20221017153311.png]]

#  Combinando Conjuntos de Resultados
### UNION 
+ Remove as duplicidades
### UNION ALL
+ Traz inclusive as duplicidades
```sql
	SELECT 
		coluna1, coluna2, coluna3
	FROM
		tabela1
UNION
	SELECT 
		coluna1, coluna2, coluna3
	FROM
		tabela2
```

#### Exemplo


```sql
	SELECT
		Name ProductName
	FROM 
		Production.Product
	WHERE
		Color = 'Black'
UNION
	SELECT
		Name ProductName
	FROM 
		Production.Product
	WHERE
		Color = 'Silver'
```


# Lista de exercícios
![[1 - Esquema Logico de Dados.jpg]]
## 1 - Cursos com duração exata de quatro dias
```sql
SELECT
	c.id_curso, 
	c.ds_curso
FROM
	tb_cursos c
WHERE
	c.duracao = 4
```

![[Pasted image 20221017162127.png]]

## 2 - Listar todos os empregados ordenados pelo cargo e pela idade (do mais jovem para o mais velho)
```sql
SELECT 
	*
FROM
	tb_empregados e
ORDER BY 
	e.ds_cargo ASC, dt_nascimento DESC;
	
```

![[Pasted image 20221017162643.png]]
## 3 - Quais cursos foram realizados em Chicago e/ou em Seatle?

```sql
SELECT 
	*
FROM
	tb_cursos_oferecidos co
WHERE 
	co.localizacao = 'Seattle' OR co.localizacao = 'Chicago'; 

```

![[Pasted image 20221017163013.png]]

## 4 
```sql
SELECT 
	nm_empregado, 
	iniciais_empregado
FROM 
	tb_empregados
WHERE 
	NOT (nm_empregado = 'JONES' AND iniciais_empregado = 'R'); 
```

## 5 
```sql
SELECT
	id_empregado, 
	ds_cargo, 
	dt_nascimento
FROM
	tb_empregados
WHERE
	ds_cargo IN ('SALESREP', 'TRAINER') AND
	dt_nascimento < '01/01/1960'
```

## 6
## 7 
```sql
SELECT 
	e.id_empregado
FROM
	tb_empregados e
	INNER JOIN 
		tb_departamentos d
	ON
		d.id_departamento = e.id_departamento
WHERE
	d.nm_departamento <> 'Training'
```
## 8
```sql
SELECT
	e.id_empregado
FROM
	tb_empregados e
WHERE
	e.id_empregado NOT IN (SELECT
								id_participante
							FROM 
								tb_matriculas
							WHERE 
								id_curso = 'JAV');
```

![[Pasted image 20221017172559.png]]

## 9

## References
1.