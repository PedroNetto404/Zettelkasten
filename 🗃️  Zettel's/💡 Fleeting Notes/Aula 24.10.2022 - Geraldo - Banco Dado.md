**Meta data**
Note-type:: #Zettel/NoteType/Fleeting 
Note-Status:: #Zettel/Status/Pending 
Tags:: 

# Aula 24.10.2022 - Geraldo - Banco Dados

# Tópicos avançados em SQL
## Operador PIVOT
+ Sintaxe: 
```sql
SELECT <non-pivoted column>,
    [first pivoted column] AS <column name>,
    [second pivoted column] AS <column name>,
    ...
    [last pivoted column] AS <column name>
FROM
    (<SELECT query that produces the data>)
    AS <alias for the source query>
PIVOT
(
    <aggregation function>(<column being aggregated>)
FOR
[<column that contains the values that will become column headers>]
    IN ( [first pivoted column], [second pivoted column],
    ... [last pivoted column])
) AS <alias for the pivot table>
<optional ORDER BY clause>;
```
+ Conceito de transformação em dados refere-se a reestruturá-los em outro formato
+ Temos o pivot e unpivot em SQL;
+ Gera uma expressão com seus valores em tabela, ou seja, ele pega os dados que ficam em formato horizontal (linha) e os coloca em formato vertical (Colunas)
+ ![[📂 Files/Pasted image 20221024144806.png]]
+ ![[📂 Files/Pasted image 20221024144820.png]]
+ 
+ ---> Visão inline
### Exemplo 01
```sql
SELECT -------> Cabeçalho: 
	SalesPersonId, [29486] AS Cust1, [29487] AS Cust2, 
	[29488] AS Cust3, [29491] AS Cust4, 
	[29492] AS Cust5, [29512] AS Cust6
FROM -------> Fonte de dados:
	(
		SELECT
			SalesOrderId, 
			CustomerId, 
			SalesPersonID
		FROM 
			Sales.SalesOrderHeader
		WHERE
			SalesPersonID IS NOT NULL
	) AS p
PIVOT -------> Configuração da transformação 
(
	COUNT (SalesOrderId)
	FOR CustomerID in ([29486], [29487], [29488], [29491], [29492], [29512])
) AS pvt

ORDER BY
	SalesPersonID; 
```

### Operador UNPIVOT
## Paginação 
+ Quantidades de tuplas retornadas pela query; 
+ Em vez de retornarmos o todo o dataset, fragmentamos o resultado em listas; 
+ Palavras-chave
	+ OFFSET;
		+ Quantas linhas devem ser saltadas;
	+ FETCH; 
		+ Quantas linhas devem ser pegar depois do offset; 
+ Sintaxe: 
```sql 
SELECT 
	ProductId, 
	ProductNumber, 
	Name AS ProductName, 
	ListPrice
FROM 
	Production.Product 
ORDER BY
	ProductId
OFFSET 
	0 ROWS
FETCH 
	NEXT 10 ROWS ONLY
```
+ Informando o offset podemos escolher quantas linhas queremos pular e com o fetch escolher quantas linhas pegar; 
+ Com o orderby 

## Trabalhando com expressões
```sql
SELECT 
	FirstName + ' ' + LastName AS FullName
FROM
	Person.Person
```

# Manipulação de variáveis
```sql
DECLARE @ProductId INT = 1; 

SELECT 
	ProductId, 
	ProductNumber, 
	Name AS ProductName
FROM
	Production.Product
WHERE
	ProductId = @ProductId; 
```
# Criando nova tabela a partir de dados de outra tabela
```sql
SELECT 
	id_empregado, comissao INTO tb_comissao_empregados
FROM
	tb_empregados
WHERE
	comissao IS NOT NULL
```
+ Uma nova tabela é criada com os dados da tabela especificada, mas sem trazer as constraints
## References
1. 