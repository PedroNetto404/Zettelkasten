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

## References
1. [Objetivos do curso](https://bkbankcombr-my.sharepoint.com/personal/bruno_barreto_bkbank_com_br/_layouts/15/onedrive.aspx?FolderCTID=0x012000B29AB324226ACF41923AA3D68471278B&id=%2Fpersonal%2Fbruno%5Fbarreto%5Fbkbank%5Fcom%5Fbr%2FDocuments%2FEstudos%2FCursos%2FDesenvolvedor%20IO%2F8%2E%20Modelagem%20de%20Dom%C3%ADnios%20Ricos%2F1%2E%20Introdu%C3%A7%C3%A3o%2FM01V02%20%2D%20Objetivos%20do%20Curso%201080p%2Emp4&parent=%2Fpersonal%2Fbruno%5Fbarreto%5Fbkbank%5Fcom%5Fbr%2FDocuments%2FEstudos%2FCursos%2FDesenvolvedor%20IO%2F8%2E%20Modelagem%20de%20Dom%C3%ADnios%20Ricos%2F1%2E%20Introdu%C3%A7%C3%A3o)
2. [2 - Visão Gerald do DDD](https://bkbankcombr-my.sharepoint.com/personal/bruno_barreto_bkbank_com_br/_layouts/15/onedrive.aspx?FolderCTID=0x012000B29AB324226ACF41923AA3D68471278B&id=%2Fpersonal%2Fbruno%5Fbarreto%5Fbkbank%5Fcom%5Fbr%2FDocuments%2FEstudos%2FCursos%2FDesenvolvedor%20IO%2F8%2E%20Modelagem%20de%20Dom%C3%ADnios%20Ricos%2F2%2E%20Vis%C3%A3o%20Geral%20do%20DDD)