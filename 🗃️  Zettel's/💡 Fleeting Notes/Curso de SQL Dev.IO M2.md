**Meta data**
Note-type:: #Zettel/Fleeting
Note-Status:: #Zettel/Status/Pending 
Tags:: 
Created:: 09-11-2022 21:27

# Curso de SQL Dev.IO M2

# O que é SQL? 

+ SQL (Structure Query Language) significa linguagem de consulta estruturada; 
+ A linguagem SQL é usada para gerenciar bancos de dados e executar operações nele
+ O SQL segue um padrão que foi adotado pela ANSI, logo em seguida pela ISO. 
+ As instruções SQL são usadas para executar tarefas como inserir, atualizar, remover e recuperar dados de um banco de dados; 
## Subconjuntos SQL

### DML (Linguagem de manipulação de dados)
Usamos a DML geralmente para: inserir, atualizar e remover registros de uma tabela. 

### DDL (Linguagem de definição de dados)
+ Usamos a DDL para criar objetos como tabela, view, campos e indices
### DCL (Linguagem de controle de dados)
+ Usamos o DCL para gerenciar as permissões de usuários, por exemplo: controlar o que pode e não pode executar no banco de dados. 
### DTL (Linguagem de transação de dados)
+ Usamos a DTL para garantir a integridade dos dados quando precisamos executar operações atômicas, um exemplo quando precisamos inserir vários registros e precisamos garantir que seja persistido tudo ou nada.
### DQL (Linguagem de consulta de dados)]
+ Certamente é a instrução SQL mais utilizada e mais conhecida do SQL, usada para efetuar consultas em um banco de dados. 
# O que é SQL Server
+ O Microsoft SQL Server é um SGBDR (Sistema Gerenciador de Banco de Dados Relacional), que originalmente foi lançado no ano 1988 pela Microsoft em parceria com a Sybase. 
+ É formado por um conjutno de componentes que são capazes de entregar muito mais que um simples armazenamento de dados
## SSDE
+ SQL Server Database Engine
## SSAS
+ Sql Server Analysis Services
## SSIS
+ SQL Server Integration Services
## SSRS
+ SQL Server Reporting Services
# Modelo Relacional
+ Apresentado por Edgar Frank em 1970, como uma forma de representação de dados;
+ Cardinalidade
	+ Grau de relação entre duas tabelas
	+ 1 - 1
	+ 1 - n
	+ n - m 
+ ![[Pasted image 20221110131331.png]]
# O que é um Banco de Dados?
+ Um banco de dados é uma coleção organizada de dados estruturados, esses dados podem ser armazenados na memória ou em arquivo no disco
+ O banco de dados é gerenciado por SGBD 
# O que é uma tabela? 
+ Estrutura de dados formada por alguns atributos
# Chave primária
É uma ou mais colunas que faz com que um registro ou uma linha seja totalmente exclusiva
# Chave estrangeira
+ Chava de referência é usada para fazer relação entre duas tabelas
# T-SQL
+ Transact-SQL é uma linguagem da Microsoft para o SQL Server
+ Extensão do SQL com algumas melhorias. 

# Cláusulas e Operadores
![[Pasted image 20221110133517.png]]

## Distinct
+ Eliminar dados duplicados
## Order BY
Ordenar registros de uma consulta
## References
1. 