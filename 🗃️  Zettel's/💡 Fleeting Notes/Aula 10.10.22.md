#  Aula 10.10.22
----
**Type:** #FleetingNote
**Topics:** #SQL #BancoDados #DDL
**Related:**
**created:** 10-10-2022 14:18

----
# Relembrando modelo relacional
## Leitura do modelo lógico
+ Identificar quais são as restrições;
+ Leitura das regras de negócio e tradução para a construção correta do modelo físico;
## Chave primária
+ Valor único que identifica de maneira única e exclusiva uma tupla em uma relação;
## Chave estrangeira
+ Referencia uma chave primária de outra tabela ou da mesma tabela(auto relacionamento);
# Case 1: Modelo de uma hotel
> NVARCHAR(n) trabalha com range maior comparado com o VARCHAR(n)

## Criando tabela Customer
### Criação

```sql
	CREATE TABLE dbo.Customer (
	CustomerId				INT CONSTRAINT nnCustumerCustomerID NOT NULL, 
	FirstName				NVARCHAR(50) CONSTRAINT nnCustomerFirstName NOT NULL, 
	LastName				NVARCHAR(50) CONSTRAINT nnCustomerLastName	NOT NULL, 
	Address1				NVARCHAR(100) CONSTRAINT nnCustomerAddress1 NOT NULL, 
	Address2				VARCHAR(100) NULL,
	PhoneNumber				NVARCHAR(22) CONSTRAINT nnCustomerPhoneNumber NOT NULL, 
	EmailAddress			VARCHAR(100) NULL, 
	City					VARCHAR(100) CONSTRAINT nnCustomerCity NOT NULL, 
	StateProvince			NVARCHAR(100) CONSTRAINT nnCustomerStateProvince NOT NULL, 
	PostalCode				NVARCHAR(100) CONSTRAINT nnCustomerPostalCode NOT NULL
); 
```
### Definição de Primary Key
```sql
ALTER TABLE dbo.Customer
	ADD CONSTRAINT pkCustomerCustomerId
		PRIMARY KEY CLUSTERED (CustomerId);
```

## Criando tabela Reservation
### Criação
```sql
CREATE TABLE dbo.Reservation(
ReservationId		INT CONSTRAINT nnReservationReservationId NOT NULL,
ArrivalDate			DATETIME CONSTRAINT nnReservationArrivalDate NOT NULL,
DepartureDate		DATETIME CONSTRAINT nnReservationDepartureDate NOT NULL,
DailyRate			SMALLMONEY CONSTRAINT nnReservationDailyRate NOT NULL,
ReservationStatusID	INT CONSTRAINT nnReservationReservationStatusID NOT NULL, 
CustomerId			INT CONSTRAINT nnReservationCustomerID NOT NULL,
RoomTypeId			INT CONSTRAINT nnReservationRoomTypeID NOT NULL
);
```

### Definindo constraint de Primary Key
```sql
ALTER TABLE dbo.Reservation
	ADD CONSTRAINT pkReservationReservationId
		PRIMARY KEY CLUSTERED (ReservationId)
```
## Criando tabela RoomType
### Criação
### Definindo constraint de Primary Key
## Criando tabela ReservationStatus
### Criação 
### Definição de constraint
> Tabela indexadora
> 	Ponteiro
> 	Métodos de criação de primary key

# Validando o BD
+ Regras de integridade de dados corresponde ao modelado

# Realizando consultas
## Operador Between
```sql
	SELECT 
		AccountNumber,
		SalesOrderID, 
		OrderDate
	FROM 
		Sales.SalesOrderHeader
	WHERE
		OrderDate BETWEEN '05/01/2007' AND '12/31/2007'
```
## Order by
```sql
SELECT 
	*
FROM 
	HumanResources.Department
ORDER BY 
	DepartmentID DESC
```

```sql
SELECT 
	DepartmentID, Name, GroupName, ModifiedDate
FROM 
	HumanResources.Department
ORDER BY 
	3
ASC;
```
## References
1. 