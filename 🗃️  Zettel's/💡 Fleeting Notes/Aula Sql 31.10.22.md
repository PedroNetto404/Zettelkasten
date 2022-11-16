**Meta data**
Note-type:: #Zettel/NoteType/Fleeting 
Note-Status:: #Zettel/Status/Pending 
Tags:: 
Created:: 31-10-2022 14:37
# Aula Sql 31.10.22

# Truncate
+ Não permite rollback
+ DDL não permite rollback --> Commit automático; 
+ Deleta todas as tuplas da tabela e recria a mesma; 
# Mesclando dados
+ Intrução merge; 
+ Normalmente usada para fazer upset
	+ combinação lógica de inserção e atualização de dados
+ Faz a junção entre uma tabela de origem e uma tabela de destino; 
# Output
```sql
INSERT INTO HumanResources.Department
	OUTPUT inserted.DepartmentID, inserted.Name, inserted.GroupName, inserted.ModifiedDate
VALUES
	('International Marketing OutPut', 'Sales and Marketing', '26/05/2012')
```

# Funções
## Funções para data em hora
+ Permite armazenas valores de data e hora em vários formatos; 
+ É melhor usar as funções do SQL Server para retornar as datas em um formato que atendas as nossas necessidades
+ A funções que manipulam data/hora pode fazer: 
	+ Retornar valores de data e hora de variadas precisões
	+ Retornar partes de valores de data e hpra
	+ Extrair valores de data e hora de paretes de datas e hopras
	+ Diferanças de datas
	+ Modificar valores de data e hora
	+ Validar valores de data e hora: 
### Exemplo 01
```sql
USE AdventureWorks2012
SELECT GETDATE() AS GETDATE, 
	SYSDATETIME() AS SYSDATETIME;
```
### Exemplo 02
```sql
USE AdventureWorks2012

SELECT
	DAY(GETDATE()) AS DAY, 
	MONTH(GETDATE()) AS MONTH, 
	YEAR(GETDATE()) AS YEAR, 
	DATENAME(WEEKDAY, GETDATE()) AS DATENAMEWeekDay, 
	DATEPART(M, GETDATE()) AS DATEPART, 
	DATEPART(WEEKDAY, GETDATE()) AS DateParteWeekDay, 
	DATENAME(MONTH, GETDATE()) AS DateNameMonth 
```
### Exemplo 03
```sql
SELECT
	DATEFROMPARTS(1972,5,26) AS DATEFROMPARTS, 
	DATETIME2FROMPARTS(1972,5,26,7,14,16,10,3) AS DATETIME2FROMPARTS, 
	DATETIMEFROMPARTS(1972, 5, 26, 7, 14, 16, 10) AS DATETIMEFROMPARTS, 
	DATETIMEOFFSETFROMPARTS(1972, 5, 26, 7, 14, 16, 10, 12, 0, 3) AS DATETIMEOFFSETFROMPARTS, 
	SMALLDATETIMEFROMPARTS(1972, 5, 26, 7, 14, 16, 10, 12, 0, 3) AS SMALLDATETIMEFROMPARTS, 
	TIMEFROMPARTS(7, 14, 16, 10, 3) AS TIMEFROMPARTS
```
### Exemplo 04
```SQL
SELECT
	DATEDIFF(dd, GETDATE(), '05/26/2025') AS DaysUnitlMyBirthday, 
	DATEADD(y, 1, GETDATE()) AS DATEADD, 
	EOMONTH(GETDATE()) AS EOMONTH, ---> Pega o ultimo dia de um mês
	ISDATE(GETDATE()) AS IsValidDate, 
	ISDATE('13/01/2122') AS InvalidDate
```

## Funções de conversão
+ Cast
+ Convert
	+ Permite formatar a saida
### Exemplo 05
```sql
SELECT TOP(10)
	SalesOrderNumber, 
	totalDue, 
	CAST(TotalDue AS DECIMAL(10,2)) AS TotalDueCast, 
	OrderDate, 
	CAST(OrderDate AS DATE) AS OrderDateCast
FROM Sales.SalesOrderHeader;
```
### Exemplo 06
```sql
SELECT 
	CONVERT(VARCHAR(20), GETDATE() AS [Default]), 
	CONVERT(VARCHAR(20), GETDATE(), 100) AS DefaultWithStyle, 
	CONVERT(VARCHAR(10), GETDATE(), 103) AS BritishFrenchStyle, 
	CONVERT(VARCHAR(8), GETDATE(), 105) AS ItalianStyle, 
	CONVERT(VARCHAR(8), GETDATE(), 112) AS ISOStyle, 
	CONVERT(VARCHAR(15), CAST('111111.22' AS MONEY), 1) AS MoneyWithCommas
```
+ Parse, try_parse
+ Try_convert
+ Try_cast

```sql
SELECT 
	TRY_CAST('José da silva' AS INT) TryCast, 
	TRY_CONVERT(DATETIME, '13/02/2999', 112) AS TryConvert, 
	PARSE('Saturday, 26 May 2012' AS DATETIME USING 'en-US') AS Parse,
	TRY_PARSE('José da Silva Birthday' AS DATETIME USING 'en-US') AS TryParse
```

## Funções para strings
### CONCAT
### FORMAT
#### Exemplo 08
```sql
SELECT 
	'LEBLANC' + ', ' + ' PATRICK' RawValues, 
	RTRIM('LEBLANC  ') + ', ' + LTRIM(' PATRICK') TrimValue, 
	LEFT('PatrickDTomorr', 7) [Left], 
	RIGHT('DTomorrLeBlac', 7) [Right], 
	SUBSTRING('DTomorrPatrick', 8, LEN('DTomorrPatrick')) [SubString], 
	'12/' + CAST(1 AS VARCHAR) + '/2012' WithoutConcat, 
	CONCAT('12/', 1, '/2012') WithConcat
```
## Funções lógicas
### Choose
### IIF
```sql
DECLARE @choosevar INT = 3

SELECT(@choosevar, 'ONE', 'TWO', 'PATRICK', 'THREE') [Choose], 
IFF(DATENAME(MONTH, GETDATE()) = 'July', 'The 4th is this month', 'No Fireworks') AS [IIF]
```
## References
1. 