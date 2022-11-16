---
note-type: #Zettel/NoteType/Fleeting 
note-status: #Zettel/Status/Pending 
media-type: 
date: 14-10-2022 15:56
tags:
---
#  Intro

## Models - O que é um modelo? 
No MVC um modelo é a representação de um objeto do mundo real; 
Na maioria das vezes este objeto pode representar uma tabela de um banco de dados

> No MVC um modelo pode ser um conjunto de informações de diversos objetos em um só, esse conceito nós chamamos de DTO (Data Transfer Objects) que são muito utilizados para diminuir o número de requisições no servidor; 
> Assim, uma model pode se comportar como simplesmente a descrição de um objeto ou como uma coleção de objetos que faz sentido para a aplicação

## Anotações nas models
+ Temos 3 benefícios de utilizar anotações
+ Annotations é um importante recurso utilizado principalmente para especificar que tipo de dado a propriedade deve receber; 
+ Também é utilizado para definir tamanho, padrão e obrigatoriedade de preenchimento. 
+ Uma model com anotações pode passar por uma validação para garantir que as especificações foram antedidas. As mesmas anotações podem servir para mapear tipos e taanhos de colunas no bancos de dados. 
+ Outra usabilidade comum é fazer anotações trabalharem como validão de formulário nas Razor Views

## References
1. 