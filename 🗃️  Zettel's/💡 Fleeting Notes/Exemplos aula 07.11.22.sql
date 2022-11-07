-- Exemplo 1

SELECT 
	SUM (poh.TotalDue) AS TotalDue
FROM 
	Purchasing.PurchaseOrderHeader poh; 

-- Exemplo 2

SELECT
	SUM (poh.TotalDue) AS [TotalDue], 
	AVG (poh.TotalDue) AS [Average TotalDue], 
	COUNT(poh.TotalDue) AS [NumberOfEmployees], 
	COUNT(DISTINCT(poh.EmployeeId)) AS [DistinctNumberOfEmployees]
FROM
	Purchasing.PurchaseOrderHeader poh;

-- Exemplo 3

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

-- Exemplo 4

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

-- Exemplo 5

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

-- Exemplo 6

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

-- Exemplo 7

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
SELECT *
FROM EmployeePOs; 

-- Exemplo 8

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
	INNER JOIN 
		Person.Person p
	ON 
		ep.EmployeeId = p.BusinessEntityID

-- Exemplo 9

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

-- Exemplo 10 

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

-- Exemplo 11

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

-- Exemplo 12

BEGIN TRY
	SELECT 1/0
END TRY

BEGIN CATCH
	
END CATCH

-- Exemplo 13

BEGIN TRY
	SELECT 1/0
END TRY

BEGIN CATCH
	THROW  51000, 'você dividiu por zero!!!', 1
END CATCH

-- Exemplo 14

BEGIN 
	DECLARE @StartingHireDate DATETIME = '31/12/2001'

	SELECT e.BusinessEntityId, p.FirstName, p.LastName, e.HireDate
	FROM HumanResources.Employee e
	INNER JOIN Person.Person p
		ON e.BusinessEntityId = p.BusinessEntityId
	WHERE HireDate <= @StartingHireDate
END

--Exemplo 16

IF(DATENAME(M, GETDATE()) = 'December')
BEGIN
	SELECT 'Chegando o Natal' Results
END
ELSE
BEGIN
	SELECT 'Não, ainda não é dezembro :(' Results
END

-- Exemplo 17
DECLARE @count INT = 0
WHILE (@count < 10)
BEGIN
	SET @count = @count + 1;
	IF(@count < 5)
		BEGIN
			SELECT @count AS Counter
		END
		ELSE
			BREAK;
END