**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 16-11-2022
Created-time:: 14:15
Liteturature-Note:: 
Tags:: 

# Aula Banco de Dados

## Views
+ É um objeto virtual
	+ Tabela virtual
+ Conjunto de resultados é extraído de uma view
+ Parecido com tabela real com linhas e colunas
+ O único momento em que uma view é materializada (armazenada em disco) é quando é **indexada**
+ Para usar dml precisamos de uma visão simples.
+ Quando usar view? 
	+ Relatórios não homologados em releases dando permissão para um usuário específico utilizar 
	+ Esconder a complexidade da query
### Alguns usos
+ Filtrar dados de tabelas subjacentes
+ Filtrar dados para propósito de segunraça
+ Centralizar dados ditribuidos por vários servidores
+ Criar um conjunto de dados para serem utilizados
### Antes de criar views, é preciso entender: 
+ São usados como uma camada de abstração por desenvolvedores de BD
+ Usados para dar segunraça aos dados de diversas maneiras
Ex: podemos criar uma view que exponha somente dados expecíficos
	Conceder a usuários específicos permissões específicas
	Expomos só o que interessa ao usuário
+ Se usarmos SELECT * quando os esquemas mudarem, o mesmo acontecerá com a listagem das views
+ Não devemos usar order by em views
	+ Não será válida
	+ Só será válido se usar em conjunto com o TOP
### Como criar uma view
```SQL
USE MyAdventureWorks;

CREATE VIEW dbo.vwEmployeeInformation
AS
SELECT 
	p.Title,
	p.FirstName,
	p.MiddleName,
	p.LastName,
	e.JobTitle, 
	e.BirthDate, 
	e.Gender
FROM Person.Person p
INNER JOIN HumanResources.Employee e
	ON (p.BusinessEntityID = e.BusinessEntityID);
```
Note que no exemplo acima usamos a palavra reservada view passando o nome da view, antes o esquema, depois o "as" onde passamos nossa query

Para que acessemos o conteudo da view que foi criada basta que digitemos: 
```sql 
USE MyAdventureWorks;
SELECT *
FROM dbo.vwEmployeeInformation;
```
### Views Indexadas
+ Diferente das outras views
+ É materializada e armazenada em disco da mesma maneira que uma tabela
#### Recurso disponível no SQL Server
+ Otimizador de queries
	+ Referenciar uma view
		+ Aumentar desempenho
		+ Mesmo que a view não seja referênciado na query
### Requisitos da Tabela referenciada
+ Tabelas referênciadas
	+ Requisitos
		+ Todas no mesmo BD
		+ Colunas Calculadas tabela de base
			+ Não determinísticas (Sempre retorna o mesmo valor ou conjunto de resultados)
				+ Devem ser removidas
+ Todo tipo de dado float ou real é considerado impreciso e não pode ser a chave de um índice, a não ser que seja marcada como PERSISTED
### Verificando se uma coluna é determinística
```sql
SELECT COLUMNPROPERTY(OBJECT_ID('Sales.SalesOrderDetail'), 'LineTotal', 'IsDeterministic', AS 'Column Lenght')
```
### Exemplo de visão indexada
```sql
SET NUMERIC_ROUNDABORT OFF; 
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, 
	ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON; 
GO
IF(OBJECT_ID('Purchasing.vwPurchaseOrders')) IS NOT NULL
	DROP VIEW Purchasing.vwPurchaseOrders
GO
CREATE VIEW Purchasing.vwPurchaseOrders
WHITH SCHEMABINDING
AS
	SELECT 
		poh.OrderDate,
		pod.ProductId, 
		SUM(poh.TotalDue) TotalDue, 
		COUNT_BIG(*) POCount
	FROM
		Purchasing.PurchaseOrderHeader poh
	INNER JOIN Purchasing.PurchaseOrderDetail pod
		ON(poh.PurchaseOrderId = pod.PurchaseOrderId)
	GROUP BY
		poh.OrderDate, pod.ProductId;
GO
CREATE UNIQUE CLUSTERED INDEX CIX_vwPurchaseOrders_OrderDateProductID
ON Purchasing.vwPurchaseOrders(OrderDate, ProductId)

SELECT *
FROM Purchasing.vwPurchaseOrders
```
# Functions
+ São códigos em T-SQL que podem aceitar parâmetros 
## Diferença entre fuctions e stored procedures
+ Fu

## Exemplo 04
```sql
CREATE FUNCTION dbo.GetEmployeeAge(@BirthDate DATETIME)
RETURNS INT
BEGIN
	DECLARE @Age INT
	SELECT @Age = DATEDIFF(DAY, @BirthDate, GETDATE())
	RETURN @Age
END;
GO

SELECT TOP(10)
FROM
	p.FirstName, 
	p.LastName, 
	e.BirthDate, 
	dbo.GetEmployeeAge EmployeeAge
INNER JOIN Person.Person p
	ON(e.BusinessEntityID = p.BusinessEntityId); 
```
## Exemplo 05
```sql
ALTER FUNCTION [dbo].[GetEmployeeAge](@BirthDate DATETIME)
RETURNS INT
BEGIN
	DECLARE @Age INT
	SELECT @Age = DATEDIFF(YEAR , @BirthDate, GETDATE())
	RETURN @Age
END;

```sql
SELECT TOP(10)
	p.FirstName, 
	p.LastName,
	e.BirthDate,
	dbo.GetEmployeeAge(BirthDate) EmployeeAge
FROM HumanResources.Employee e
INNER JOIN Person.Person p
	ON (e.BusinessEntityId = p.BusinesEntityId)

DROP FUNCTION dbo.GetEmployeeAge;
```
+ Podemos fazer a chamada de uma function tanto pelo select quanto pelo execute 
## Exemplo 7
```SQL
USE MyAdventureWorks
GO
IF(OBJECT_ID('dbo.GetEmployeeAge')) IS NOT NULL
	DROP FUNCTION dbo.GetEmployeeAge
GO
CREATE FUNCTION [dbo].[GetEmployeeAge](
	@BirthDate DATETIME = '05/26/1972', @Temp DATETIME = NULL
)
RETURNS INT
AS
BEGIN
	DECLARE @Age INT
	SELECT @Age = DATEDIFF('Year', @BirthDate, GETDATE())
	RETURN @Age
END;

SELECT dbo.GetEmployeeAge(DEFAULT, NULL); 
SELECT dbo.GetEmployeeAge('05/26/1972', ''); 
SELECT dbo.GetEmployeeAge('05/26/1972', NULL);

SELECT dbo.GetEmployeeAge(DEFAULT, '01/10/1972'); 
SELECT dbo.GetEmployeeAge('05/26/1972', '01/10/1972');
```
```SQL
DECLARE @Age INT; 
EXECUTE @Age = dbo.GetEmployeeAge @BirthDate = '07/31/1977'; 
SELECT @Age;
```
```sql
CREATE OR ALTER FUNCTION dbo.GetOrderDetails(@SalesId INT)
	RETURNS TABLE
AS
	RETURN
	(
	
		SELECT sod.SalesOrderId, sod.SalesOrderDetailId,
			sod.CarrierTrackingNumber, p.Name ProductName, so.Description
		FROM Sales.SalesOrderDetail sod
		INNER JOIN Production.Product p ON (sod.ProductId = p.ProductId)
		INNER JOIN Sales.SpecialOffer so
			ON (sod.SpecialOfferId = so.SpecialOfferId)
		WHERE
			sod.SalesOrderId = @SalesID
	)

SELECT * 
FROM dbo.GetOrderDetails(43659)
```
```sql
CREATE OR ALTER FUNCTION [dbo].[GetTotalPedido](@OrderId INT)
	RETURNS DECIMAL(7,2)
AS
BEGIN
	DECLARE @Total DECIMAL(7,2)
	SELECT @Total = SUM(SalesOrderDetail.UnitPrice * SalesOrderDetail.OrderQty)
	FROM Sales.SalesOrderDetail
	WHERE
		SalesOrderId = @OrderId;
	RETURN @Total
END
```
```sql
CREATE OR ALTER FUNCTION [dbo].[GetDetalhesPedidoCliente] (@CustomerId NCHAR(5))
RETURNS @PedidosCliente TABLE (
	CustomerId       NCHAR(5), 
	FirstName        NVARCHAR(25), 
	MiddleName       NVARCHAR(25), 
	LastName         NVARCHAR(25), 
	OrderDate        DATETIME
)
AS 
BEGIN
	INSERT INTO @PedidosCliente
	SELECT c.CustomerID, p.FirstName, p.MiddleName, p.LastName, c.ModifiedDate
	FROM Sales.Customer c
	INNER JOIN Person.Person p
		ON (c.CustomerId = p.BusinessEntityId)
	WHERE c.CustomerId = @CustomerId; 
	
	IF(@@ROWCOUNT = 0)
	BEGIN
		INSERT INTO @PedidosCliente
			VALUES
			(NULL, 'Cliente não encontrado', 'Cliente não encontrado', 'Cliente não encontrado', GETDATE())
	END
	RETURN
END
```












## References
1. 