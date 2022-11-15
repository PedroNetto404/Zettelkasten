---
note-type: #Zettel/NoteType/Fleeting 
note-status: #Zettel/Status/Pending 
media-type: 
date: 14-10-2022 16:31
tags:
---
#  Demo Models

## DRY
+ Don't Repeat Yourself
+ Especificar um comportamento ou funcionalidade de uma model
+ Uma vez especificada uma anotação para model ela funciona para a model, formulários ou para o banco
## Annotations
Sempre tanto para a model, formulário ou banco de dados;
## Atributo Required
+ Campo obrigatório; 
+ Não prenchido -> model inválida; 
+ Podemos escolher a mensagem de error
	+ ![[📂 Files/Pasted image 20221025172536.png]]
## Atributo String Lenght
+ Podemos especificar o tamanho de uma string
+ ![[📂 Files/Pasted image 20221025172828.png]]

## DataType
+ Podemos definir o tipo de dado da propriedade
## Display
+ Podemos definir o nome de exibição de uma propriedade
+ ![[📂 Files/Pasted image 20221025173759.png]]
## RegularExpression
## Range
+ Valores entre um valor máximo e mínimo
## Column
+ Podemos especificar o nome da coluna do banco de dadaos
+ Devemos especificar o tipo e tamanho
+ ![[📂 Files/Pasted image 20221025174221.png]]
## Key
+ Anotação para chave primária
## Anotações inline
![[📂 Files/Pasted image 20221025174513.png]]
## É possível contruir a nossa própria anotação
### Required
+ Campo exigido; 
## Model State
+ Classe que lida com a verificação da validade da model que está sendo passada por parâmetro
+ A classe nos fornece diversas propriedades para a manipulação do estado da model
+ ![[📂 Files/Pasted image 20221025175518.png]]
+ O prório asp net possui um dicionário com mensagens de erro
+ ![[📂 Files/Pasted image 20221025175757.png]]
+ 
## References
1. 