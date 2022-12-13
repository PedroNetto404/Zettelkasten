**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 12-12-2022
Created-time:: 16:21
Liteturature-Note:: [[🗃️  Zettel's/Literature Notes/Estilos arquiteturias]]
Tags:: 

# Estilos arquiteturias
+ É uma abordagem de como projetar e entregar uma aplicação
+ Trata-se de 
	+ Como organizar os componentes responsáveis de uma arquitetura; 
	+ Como eles irão interagir entre si
	+ Quais aspectos tecnológicos irão atender
+ Define como a arqueitetura vai funcionar

## Arquitetura Monolítica
![[📂 Files/Image/Pasted image 20221212162440.png]]
## Arquitetura em camandas
![[📂 Files/Image/Pasted image 20221212162558.png]]
## Arquitetura REST
![[📂 Files/Image/Pasted image 20221212162803.png]]

## Arquitetura de Microservices
![[📂 Files/Image/Pasted image 20221212162940.png]]

![[📂 Files/Image/Pasted image 20221212163244.png]]

![[📂 Files/Image/Pasted image 20221212163255.png]]

![[📂 Files/Image/Pasted image 20221212163317.png]]

#  Padrões Arquiteturais
+ São estratégias de alto nível que dizem respeito a componentes de grande escala, as propriedades e mecanismos globais de um sistema
+ Um projeto de arquitetura pode conter diversos estilos arquiteturias, e cada estilo arquitetural pode utilizar diversos padrões arquiteturais. 
	+ Um padrão arquitetural pode ser um subconjunto de um estilo arquitetural visando um escopo específico
+ É uma solução geral e reutilizável para um problema em um contexto específico.
+ É uma solução recorrente para um problema recorrente. 

## 3-Tier Achitecture
+ Arquitetura de "3 camadas"
+ ![[📂 Files/Image/Pasted image 20221212164154.png]]
+ Clássica maneira de distribuir responsabilidades (apresentação, aplicação [negócios], acesso a dados)
+ Não deve ser menosprezada, pois nem sempre a complexidade é uma solução para problemas simples
+ Pode ser aplicada em diversos cenários 
	+ Geralmente encontrada em aplicações com foco comercial (cadastros, regras e etc)

## Onion Architecture
![[📂 Files/Image/Pasted image 20221212164700.png]]
+ Entidades de domínio no centro
![[📂 Files/Image/Pasted image 20221212165322.png]]

## Hexagonal Architecture "Ports & Adapters"
![[📂 Files/Image/Pasted image 20221212165607.png]]
### Adaptadores primários
+ Origem dos comandos
+ ![[📂 Files/Image/Pasted image 20221212170753.png]]
### Adaptadores secundários
![[📂 Files/Image/Pasted image 20221212170810.png]]
## CQRS - Command Query Responsibility Segregation
+ Foco principal é separar os meios de leitura e escrita de dados. 
	+ Alterações de dados são realizados via Commands
	+ Leitura de dados são realizados via Queries
+ Objetivo
	+ Prover expressividade para a aplicação
		+ Commands representam intenção de negócio
+ CQRS promove a consistência eventual
	+ Quando possuimos um banco de leitura e outro de escrita com os mesmos dados
	+ Dados não são consistidos exatamente no mesmo momento
+ Muito aplicado em arquiteturas hexagonais, microservices ou em aplicações que possuem uma alta demanda de consumo de dados

### Commands
+ Representa uma intensão de mudança no estado de uma entidade; 
+ São expressivos
	+ Representam uma única intensão de negócio
### Queries
+ Forma de obter dados de um banco ou origem de dados para atender as necessidades da aplicação
![[📂 Files/Image/Pasted image 20221212172612.png]]

![[📂 Files/Image/Pasted image 20221212172721.png]]
+ Todo comando produz um evento
	+ Sucesso
	+ Falha
![[📂 Files/Image/Pasted image 20221212173502.png]]

## Event Sourcing
> Nós podemos buscar o estado de uma aplicação para encontrar o estado atual do mundo, e isso responde muitas perguntas. Entretanto há momentos que nós não só queremos ver onde nós estamos, mas também queremos saber como chegamos lá.
> Event Sourcing assegura que todas as mudanças feitas no estado de uma aplicação são armazenadas como uma sequência de eventos. Não só podemos buscar esses eventos, mas também podemos usar este log de eventos para reconstruir estados passados e ajustar automaticamente o estado atual com mudanças retroativas

+ Ideia central
	+ Persistir todos estados anteriores de uma entidade de negócio desde o momento de sua criação; 
	+ Com esses dados é possível realizar o "replay" dos fatos passados para entender o comportamento do usuário, trabalhar com Big Data, Machine Learning, realizar testes de integração com cenários reais ou simplesmente recriar as entidades se necessário

![[📂 Files/Image/Pasted image 20221212174422.png]]

## References
1. 