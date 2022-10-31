**Meta data**
Note-type:: #FleetingNote 
Note-Status:: #LiteratureNotePending 
Tags:: 
Created:: 30-10-2022 12:22
# Modelagem de Domínios Ricos - Eduardo Pires

# Aula 1 - Introdução

##  Objetivos do curso
+ Domain Driven Design
+ Event Sourcing
+ SOLID
+ CQRS
+ Soft. Design Patterns

Os fundamentos da modelagem de software são baseados em buildings blocks
	Camadas de software

Toda necessidade merece uma abordagem precisa e desenvolvida sob medida
	Requisitos diferentes precisam de abordagens diferentes

Vamos aprender como analisar uma situação  e utilizar a complexidade necessária

# Aula 2 - Visão Geral do DDD
## Vídeo 1 - DDD Arquitetura Camadas
###  Domain-Driven Design
+ DDD não é arquitetura em camadas; 
+ Não é um espécie de template
+ DDD não é uma receita pronta sobre como desenvolver uma arquitetura baseada em camadas do tipo
	+ Presentation
	+ Services
	+ Application
	+ Domain
	+ Infra
+ **DDD é uma abordagem de modelagem de software com foco na complexidade da aplicação**
+ Através do conhecimento do domínio é possível facilitar a implementação de complexas regras / processos de negóicio; 
+ Domain-Driven Design é sobre **design**. 
	+ Design guiado pelo conhecimento do domínio
+ "Toda arquitetura é um design, mas nem todo design é arquitetura"
## Vídeo 2 - Quando implementar
+ Quando devo implementar o DDD? 
	+ Você precisa ter conhecimento suficiente para identificar por conta própria se deve implementar DDD ou não. 
	+ Caso não esteja conseguindo identificar. Não implemente.
+ Aplicação é um CRUD simples? --> Sem necessidade de DDD
+ A complexidade aumentará?
+ Temos muitas operações de neǵocio e casso de uso?
+ Como os usuários estão se comportando
+ Complexidades das regras e previsão de complexidade
### Big Ball of Mud (A grande bola de lama)
+ Impossível de gerenciar
+ Grande bola de lama, indica um anti-padrão para arquitetos e desenvolvedores e refere-se a um software que possui todos os problemas que resultam em um código difícil de entender, manter e estender
#### Como o DDD poderia resolver
+ Capturar elementos conhecidos do negócio; 
+ Organizá-los em um conjunto de princípios
+ Criar uma modelagem de domónio com foco no desenvolvimento; 
+ Abordagem diferenciada para desenvolver a regra de negócio
## Vídeo 3 - Visão Global
### Domain-Driven Design
+ Introduzida em 2003 por Eric Evans
+ Indicado para aplicações complexas, com muiitas entidades e regras de negócio; 
+ Razoavelmente fácil de enteder, difícil de aplicar; 
+ Um guia de como enteder um negócio, organizá-lo em um conjunto de princípios, criar uma modelagem com base no negócio e implementar utilizando diversas boas práticas
	+ Corrente filosofica de como desenvolver aplicações em um contexto de regras de negócio complexas; 
#### Pontos chave
+ Linguagem ubíqua; 
+ Contextos delimitados; 
+ Mapas de contexto; 

Entender a fundo o nosso neǵocio; 
	Para que ele serve, quem entender, como funciona
#### 1 - Extração da linguagem ubíquoa
![[📂 Files/30 de out de 2022 as 13-25-23.png]]
#### 2 - Modelagem estratégica
+ Separação em tipos de domínio; 
+ Divisão em blocos
	+ Cada bloco tem uma importancia para o neǵocio
![[📂 Files/30 de out de 2022 as 13-24-38.png]]
#### 3 - Criando um mapa de contextos
![[📂 Files/30 de out de 2022 as 13-24-06.png]]
#### 4 - Definir a arquitetura dos contextos
![[📂 Files/30 de out de 2022 as 13-23-32.png]]

#### 5 - Modelagem tática
![[📂 Files/2022-10-30_13-20.png]]

+ Definimos as agregações
+ Objetos de valor
+ Raiz da agregação
+ Entidades filhas
+ Relacionamentos com outras entidades

# Linguagem ubíqua
+ Vocabulário de todos os termos específicos do domónio; 
	+ Nomes, verbos, adjetivos, jargões, apelidos, expressões idiomáticas e advérbios
+ Compartilhado por todas as partes envolvidas no projeto
	+ Primeiro passo para evitar desentendimentos
+ Usadas em todas formas faladas e escritas de comunicação
	+ A linguagem universal de um negócio é feita dentro da empresa

![[📂 Files/Pasted image 20221030133418.png]]
Cada funcionário não tem uma visão global sobre o que é e como funciona a empresa; 
Cada um vê a empresa segunda a sua perspecpção de seu departamento; 
Precisamos garantir que todos utilizem os mesmos termos; 
Entender os aspectos pricipais da empresa; 
Cada palavra deve expressar o verdadeiro significado a ser expressado

+ A linguagem ubíqua é definida com termos específicos do domínio gerando um conhecimento correto do domínio
+ Core domain
	+ Razão pela qual o sistema existe
	+ Nunca pode falhar
	+ Cerne do neǵocio 
![[📂 Files/Pasted image 20221030134200.png]]

+ Ajudando os requisitos do usuário fazerem mais sentido; 
+ Terminologias comuns geram confusões
	+ Devemos utilizar os termos corretos para os significados corretos
+ Sem confusão no entendimento do neǵócio e na montagem do mapa de contextos
# Papeis dentro de um projeto
## Domain Expert
+ Conhece do negócio, os processos e seus termos
+ Define novos termos, processos e regras; 
+ Tem conhecimento da operação; 
## Time de desenvolvimento
+ Precisa de apoio do Domain Expert para entender o processo,  as terminologias do neǵocio; 
# Como extratir e definir a Linguagem Ubíqua? 
+ Linguagem natural, não artificial
+ Obtida em reuniões e brainstrormings
+ 
## References
1. [Objetivos do curso](https://bkbankcombr-my.sharepoint.com/personal/bruno_barreto_bkbank_com_br/_layouts/15/onedrive.aspx?FolderCTID=0x012000B29AB324226ACF41923AA3D68471278B&id=%2Fpersonal%2Fbruno%5Fbarreto%5Fbkbank%5Fcom%5Fbr%2FDocuments%2FEstudos%2FCursos%2FDesenvolvedor%20IO%2F8%2E%20Modelagem%20de%20Dom%C3%ADnios%20Ricos%2F1%2E%20Introdu%C3%A7%C3%A3o%2FM01V02%20%2D%20Objetivos%20do%20Curso%201080p%2Emp4&parent=%2Fpersonal%2Fbruno%5Fbarreto%5Fbkbank%5Fcom%5Fbr%2FDocuments%2FEstudos%2FCursos%2FDesenvolvedor%20IO%2F8%2E%20Modelagem%20de%20Dom%C3%ADnios%20Ricos%2F1%2E%20Introdu%C3%A7%C3%A3o)
2. [2 - Visão Gerald do DDD](https://bkbankcombr-my.sharepoint.com/personal/bruno_barreto_bkbank_com_br/_layouts/15/onedrive.aspx?FolderCTID=0x012000B29AB324226ACF41923AA3D68471278B&id=%2Fpersonal%2Fbruno%5Fbarreto%5Fbkbank%5Fcom%5Fbr%2FDocuments%2FEstudos%2FCursos%2FDesenvolvedor%20IO%2F8%2E%20Modelagem%20de%20Dom%C3%ADnios%20Ricos%2F2%2E%20Vis%C3%A3o%20Geral%20do%20DDD)