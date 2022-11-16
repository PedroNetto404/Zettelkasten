**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Tags:: 
Created:: 05-11-2022 08:54

# Aula Treinamento Sharp 05.11.22

# O que é uma API?
# Por que separar o backend do frontend?
+ Liberdade para versionar de uma forma mais efeciente e liberação de releases sem muitas dependência; 
+ A maior carga de processamento se dá para o backend, assim precisamos de um servidor com mais aproveitamento para o mesmo. 
+ Já o front pode ser armazenado em um servidor com arquivos estáticos
+ Qualquer client front end pode consumir meu back através de APIs
+ Para escalar a aplicação podemos nos preocupar muito mais com o back
# O que é HTTP e os seus verbos
## Get
+ Solicita a representação de um recurso específico
+ Idepotente
	+ Solicitações com o mesmos parâmetros retornam os mesmos recursos
## Post
+ Submiter uma entidade a um recurso específico
+ Não idenponte
## Put
+ Substitui todas as atuais representações de recurso de destino pela carga de dados da requisição
# O que é um Json
+ JavaScript Object Notation
+ Meio de trafegar dados de uma forma organizada e leve
# Rest
+ Representa
# HTTP Response
## Status Code
### 100 - 199
+ Informacionais
### 200 - 299
+ Sucessful Responses
### 300 - 399
+ Redirection Messages
### 400 - 499
+ Client Error
### 500 - 599
+ Server Error
# Projeto prático

+ Fail Fast

## References
1. 