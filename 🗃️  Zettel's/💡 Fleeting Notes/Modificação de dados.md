**Meta data**
Note-type:: #FleetingNote 
Note-Status:: #LiteratureNotePending 
Tags:: 

# Modificação de dados
## Inserindo dados em tabelas
### Insert into
+ Uma ou várias tuplas em uma única instrução; 
+ Caso o insert não vá afetar todas as colunas devemos informar todas as colunas que seram modificadas; 
+ Caso não seja informado, a ordem será da criação da tabela e todos os valores são exigidos; 
### Select into
+ Ansi CREATE TABLE AS
+ O comprimento das colunas strings e numéricas pode mudar
+ As constrânts não vem junto
+ Não devemos usar select into para tabelas permanentes
### Sequências
+ flexível; 
+ Pode ser utilizada para alimentar várias tabelas (boa prática alimentar uma única); 
```sql
CREATE SEQUENCE <esquema>.<nome sequencia> 
AS INT
START WITH <algum numero>
INCREMENT BY <algum numero>
```
+ O tipo de dados específicos pode ser qualquer inteiro do BD, por padrão bigint
+ Start with opcional
> Quando utilizando uma query como fonte de dados para nosso insert não utilizando a diretiva values (é padrão ANSI)
### Atualização Dados
+ Caso precisarmos atualizar dados a partir de dados de outras relações podemos utilizar o join
## References
1. 