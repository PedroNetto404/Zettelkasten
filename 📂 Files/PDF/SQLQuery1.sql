--Exemplo 19

DELETE 
FROM
	HumanResources.Department
WHERE
	DepartmentId = 22

--Exemplo 20

DELETE FROM
	HumanResources.Department
FROM
	HumanResources.Department d
LEFT OUTER JOIN
	HumanResources.EmployeeDepartmentHistory ed
	ON (d.DepartmentID = ed.DepartmentID)
WHERE
	ed.DepartmentID IS NULL;

--Exemplo 21
--
TRUNCATE TABLE dbo.Department;

--Exemplo 22

BEGIN TRANSACTION; 

SELECT *
FROM 
	HumanResources.JobCandidate
WHERE
	JobCandidateId = 13; 

DELETE
FROM 
	HumanResources.JobCandidate
WHERE
	JobCandidateId = 13; 

ROLLBACK;

-- Exemplo 23; 
MERGE dbo.Department destination
	USING HumanResources.Department source
		ON (destination.Name = source.Name)
	WHEN MATCHED THEN
		UPDATE
			SET destination.Name = source.Name, 
				destination.GroupName = source.GroupName,
				destination.ModifiedDate = source.ModifiedDate
	WHEN NOT MATCHED BY TARGET THEN 
		INSERT (Name, GroupName, ModifiedDate)
		VALUES (source.Name, source.GroupName, source.ModifiedDate); 

-- Exemplo 24
INSERT INTO HumanResources.Department
	OUTPUT inserted.DepartmentID, inserted.Name, inserted.GroupName, inserted.ModifiedDate
VALUES
	('International Marketing OutPut', 'Sales and Marketing', '26/05/2012')

--Exemplo 25
UPDATE HumanResources.Department
	SET Name = Name + ' Europe'
	OUTPUT
		deleted.Name AS OldName, 
		inserted.Name AS UpdateName
WHERE DepartmentId = 25;

--Exemplo 26
GO
CREATE TABLE dbo.Department_audit(
	DepartmentId		INT NOT NULL, 
	Name				NVARCHAR(50) NOT NULL,
	GroupName			NVARCHAR(50) NOT NULL, 
	DeleteDate			DATETIME NOT NULL
		CONSTRAINT dfDepartmentAudit_DeleteDate_Today Default(GETDATE())
)

DELETE
FROM
	dbo.Department
	OUTPUT deleted.DepartmentID, deleted.Name, deleted.GroupName
	INTO dbo.Department_audit (DepartmentId, Name, GroupName)
WHERE
	DepartmentID = 16

SELECT *
FROM 
	dbo.Department_audit


USE AdventureWorks2012
SELECT GETDATE() AS GETDATE, 
	SYSDATETIME() AS SYSDATETIME;

--Exemplo 02
SELECT
	DAY(GETDATE()) AS DAY, 
	MONTH(GETDATE()) AS MONTH, 
	YEAR(GETDATE()) AS YEAR, 
	DATENAME(WEEKDAY, GETDATE()) AS DATENAMEWeekDay, 
	DATEPART(M, GETDATE()) AS DATEPART, 
	DATEPART(WEEKDAY, GETDATE()) AS DateParteWeekDay, 
	DATENAME(MONTH, GETDATE()) AS DateNameMonth 

--EXEMPLO 03
SELECT
	DATEFROMPARTS(1972,5,26) AS DATEFROMPARTS, 
	DATETIME2FROMPARTS(1972,5,26,7,14,16,10,3) AS DATETIME2FROMPARTS, 
	DATETIMEFROMPARTS(1972, 5, 26, 7, 14, 16, 10) AS DATETIMEFROMPARTS, 
	DATETIMEOFFSETFROMPARTS(1972, 5, 26, 7, 14, 16, 10, 12, 0, 3) AS DATETIMEOFFSETFROMPARTS, 
	SMALLDATETIMEFROMPARTS(1972, 5, 26, 7, 14) AS SMALLDATETIMEFROMPARTS, 
	TIMEFROMPARTS(7, 14, 16, 10, 3) AS TIMEFROMPARTS

-- EXEMPLO 04
SELECT
	DATEDIFF(dd, GETDATE(), '26/05/2025') AS DaysUnitlMyBirthday, 
	DATEADD(y, 1, GETDATE()) AS DATEADD, 
	EOMONTH(GETDATE()) AS EOMONTH, 
	ISDATE(GETDATE()) AS IsValidDate, 
	ISDATE('01/13/2122') AS InvalidDate

SELECT TOP(10)
	SalesOrderNumber, 
	totalDue, 
	CAST(TotalDue AS DECIMAL(10,2)) AS TotalDueCast, 
	OrderDate, 
	CAST(OrderDate AS DATE) AS OrderDateCast
FROM Sales.SalesOrderHeader

SELECT 
	CONVERT(VARCHAR(20), GETDATE()) AS [Default], 
	CONVERT(VARCHAR(20), GETDATE(), 100) AS DefaultWithStyle, 
	CONVERT(VARCHAR(10), GETDATE(), 103) AS BritishFrenchStyle, 
	CONVERT(VARCHAR(8), GETDATE(), 105) AS ItalianStyle, 
	CONVERT(VARCHAR(8), GETDATE(), 112) AS ISOStyle, 
	CONVERT(VARCHAR(15), CAST('111111.22' AS MONEY), 1) AS MoneyWithCommas

SELECT 
	TRY_CAST('José da silva' AS INT) TryCast, 
	TRY_CONVERT(DATETIME, '13/02/2999', 112) AS TryConvert, 
	PARSE('Saturday, 26 May 2012' AS DATETIME USING 'en-US') AS Parse,
	TRY_PARSE('José da Silva Birthday' AS DATETIME USING 'en-US') AS TryParse

SELECT 
	'LEBLANC' + ', ' + ' PATRICK' RawValues, 
	RTRIM('LEBLANC  ') + ', ' + LTRIM(' PATRICK') TrimValue, 
	LEFT('PatrickDTomorr', 7) [Left], 
	RIGHT('DTomorrLeBlac', 7) [Right], 
	SUBSTRING('DTomorrPatrick', 8, LEN('DTomorrPatrick')) [SubString], 
	'12/' + CAST(1 AS VARCHAR) + '/2012' WithoutConcat, 
	CONCAT('12/', 1, '/2012') WithConcat

DECLARE @choosevar INT = 3

SELECT
CHOOSE(@choosevar, 'ONE', 'TWO', 'PATRICK', 'THREE') [Choose], 
IFF(DATENAME(MONTH, GETDATE()) = 'July',
	'The 4th is this month', 'No Fireworks') AS [IIF]