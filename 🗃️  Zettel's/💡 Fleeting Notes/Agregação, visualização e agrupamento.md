**Meta data**
Note-type:: #Zettel/Fleeting
Note-Status:: #Zettel/Status/Pending 
Tags:: 
Created:: 07-11-2022 14:14

# Agregação, visualização e agrupamento

# Agregações
+ Adição
	+ Soma todos os valores de um determinado conjunto de dados
```sql
SUM ( [ALL | DISTINCT] expressão)
```

## Exemplo 1
```sql
SELECT 
	SUM (poh.TotalDue) AS TotalDue
FROM 
	Purchasing.PurchaseOrderHeader poh; 
```

## Exemplo 2
```sql
SELECT
	SUM (poh.TotalDue) AS [TotalDue], 
	AVG (poh.TotalDue) AS [Average TotalDue], 
	COUNT(poh.TotalDue) AS [NumberOfEmployees], 
	COUNT(DISTINCT(poh.EmployeeId)) AS [DistinctNumberOfEmployees]
FROM
	Purchasing.PurchaseOrderHeader poh;
```

+ AVG 
	+ Média aritimética
+ Count 
	+ Conta as tuplas
+ Count (Distinct ())
	+ Conta as tuplas distintas de uma coluna
# Agregações com agrupamento
## Exemplo 3 
```sql 

SELECT
	sm.Name AS ShippingMethod, 
	SUM(poh.TotalDue) AS [TotalDue], 
	AVG(poh.TotalDue) AS [Average TotalDue], 
	COUNT(poh.EmployeeID) AS [NumberOfEmployees], 
	COUNT(DISTINCT(poh.EmployeeID)) AS [DistinctNumberOfEmployees]
FROM
	Purchasing.PurchaseOrderHeader poh
	INNER JOIN
		Purchasing.ShipMethod sm
	ON
		sm.ShipMethodID = poh.ShipMethodID
GROUP BY sm.Name
```

## Exemplo 4
```sql
SELECT 
	sm.Name ShippingMethod,
	YEAR(poh.OrderDate) OrderYear, 
	SUM(poh.TotalDue) TotalDue, 
	AVG(poh.TotalDue) [Average TotalDue], 
	COUNT(poh.EmployeeID) [NumberOfEmployees], 
	COUNT(DISTINCT(poh.EmployeeId)) [DistinctNumberOfEmployees]
FROM	
	Purchasing.PurchaseOrderHeader poh
	INNER JOIN 
		Purchasing.ShipMethod sm
	ON	
		poh.ShipMethodID = sm.ShipMethodID
GROUP BY
	sm.Name, YEAR(poh.OrderDate)
```

## Exemplo 5
```sql

USE AdventureWorks2012; 
GO
WITH ProductQty AS
(
	SELECT TOP(10)
		p.ProductID, 
		SUM(OrderQty) AS OrderQty
	FROM 
		Sales.SalesOrderDetail AS sod
		INNER JOIN 
			Production.Product AS p
		ON 
			sod.ProductID = p.ProductID
	GROUP BY p.ProductID
) 
SELECT 
	p.Name AS ProductionName, 
	pq.OrderQty, 
	ROW_NUMBER() OVER(ORDER BY pq.OrderQty DESC) RowNumber, 
	RANK() OVER(ORDER BY pq.OrderQty DESC) [Rank], 
	DENSE_RANK() OVER(ORDER BY pq.OrderQty DESC) [DenseRank]
FROM
	ProductQty AS pq
	INNER JOIN 
		Production.Product as p
	ON
		pq.ProductID = p.ProductID;
	
```

# Cláusula Having
+ Se comporta de modo semelhante a uma instrução SELECT, usufruindo da agregação
+ Podemos utilizar com uma instrução select e, normalmente, ela é usada com uma cláusula group by

## Exemplo 6
```sql
SELECT 
	sm.Name ShippingMethod,
	YEAR(poh.OrderDate) OrderYear, 
	SUM(poh.TotalDue) TotalDue, 
	AVG(poh.TotalDue) [Average TotalDue], 
	COUNT(poh.EmployeeID) [NumberOfEmployees], 
	COUNT(DISTINCT(poh.EmployeeId)) [DistinctNumberOfEmployees]
FROM	
	Purchasing.PurchaseOrderHeader poh
	INNER JOIN 
		Purchasing.ShipMethod sm
	ON	
		poh.ShipMethodID = sm.ShipMethodID
GROUP BY
	sm.Name, YEAR(poh.OrderDate)
HAVING SUM(poh.TotalDue) > 5000000
```

# Objetos temporários
+ O Sql Server tem três objetos temporários: 
	+ Expressões de tabelas comuns
	+ Variáveis de tabela
	+ Tabelas temporárias
## Expressões de tabela comuns
```sql
```

```sql
WITH EmployeePOs (EmployeeId, [Total Due])
AS
(
	SELECT 
		poh.EmployeeId,
		CONVERT(VARCHAR(20), SUM(poh.TotalDue), 1)
	FROM
		Purchasing.PurchaseOrderHeader poh
	GROUP BY 
		poh.EmployeeID
)
SELECT 
	ep.EmployeeId, 
	p.FirstName, 
	p.LastName, 
	ep.[Total Due]
FROM
	EmployeePOs ep
```

## Exemplo 9
```sql
DECLARE @EmployeePOs AS TABLE
(
	EmployeeId      INT,
	TotalDue        MONEY
)

INSERT INTO @EmployeePOs
SELECT
	poh.EmployeeId,
	CONVERT(VARCHAR(20), SUM(poh.TotalDue), 1)
FROM Purchasing.PurchaseOrderHeader poh
GROUP BY poh.EmployeeId;
```

```sql
DECLARE @EmployeePOs AS TABLE
(
	EmployeeId      INT,
	TotalDue        MONEY
)

INSERT INTO @EmployeePOs
SELECT
	poh.EmployeeId,
	CONVERT(VARCHAR(20), SUM(poh.TotalDue), 1)
FROM Purchasing.PurchaseOrderHeader poh
GROUP BY poh.EmployeeId; 

SELECT 
	ep.EmployeeId, 
	p.FirstName, 
	p.LastName, 
	ep.TotalDue
FROM
	@EmployeePOs ep
	INNER JOIN 
		Person.Person p
	ON 
		ep.EmployeeId = p.BusinessEntityID 
```

```sql
CREATE TABLE #EmployeePOs
(
	EmployeeId	INT, 
	TotalDue	MONEY
); 

INSERT INTO #EmployeePOs
SELECT poh.EmployeeId,
	CONVERT(VARCHAR(20), SUM(poh.TotalDue), 1)
FROM Purchasing.PurchaseOrderHeader poh
GROUP BY
	poh.EmployeeID; 

SELECT
	ep.EmployeeId, 
	p.FirstName, 
	p.LastName, 
	ep.TotalDue
FROM
	#EmployeePOs ep
	INNER JOIN 
		Person.Person p
	ON
		ep.EmployeeId = p.BusinessEntityID
```

# Tratamento de erros
```sql
BEGIN TRY
END TRY
BEGIN CATCH
END CATCH
```

```SQL
BEGIN TRY
	SELECT 1/0
END TRY

BEGIN CATCH
```

```sql
BEGIN TRY
	SELECT 1/0
END TRY

BEGIN CATCH
	THROW  51000, 'você dividiu por zero!!!', 1
END CATCH
```

# Begin ... End
```sql
BEGIN 
	DECLARE @StartingHireDate DATETIME = '12/31/2001'

	SELECT e.BusinessEntityId, p.FirstName, p.LastName, e.HireDate
	FROM HumanResources.Person p
	INNER JOIN Person.Person p
		ON e.BusinessEntityId = p.BusinessEntityId
	WHERE HireDate <= @StartingHireDate
END
```


```SQL
IF(DATENAME(M, GETDATE()) = 'December')
BEGIN
	SELECT 'Chegando o Natal' Results
END
ELSE
BEGIN
	SELECT 'Não, ainda não é dezembro :(' Results
END
```
## References
1. 