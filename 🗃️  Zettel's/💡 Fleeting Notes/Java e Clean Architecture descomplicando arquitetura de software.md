**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 02-01-2023
Created-time:: 14:26
Liteturature-Note:: [[🗃️  Zettel's/Literature Notes/Java e Clean Architecture descomplicando arquitetura de software]]
Tags:: 

# Java e Clean Architecture descomplicando arquitetura de software

## O que é arquitetura de software
+ Não é um conceito objeto
+ Como organizamos um sistemas
	+ Componentes
		+ Relações entre eles
	+ Design e evolução
+ Coleção dos componentes de software, como estar relacionados e suas restrições
+ Regras de negócio
	+ Como os componentes atendem aos requisitos de negócio
	+ Como a arquitetura conseguirá suportas os requisitos de negócio?

### Resumindo
+ Componentes de software e suas relações
+ Infraestrutura do software
+ Estrutura e design de código
+ Suporte aos requisitos de negócio
+ Simplificar evoluções no software

# Modelos de arquiteturas em camadas
  + Modelo de arquitetura
  + Arquitetura em camadas
  + Onion Architeture
	  + ![[📂 Files/Image/Pasted image 20230102143733.png]]
+ Hexagonal Architeture
+ Clean Architeture
+ ![[📂 Files/Image/Pasted image 20230102144007.png]]
	+ Isolar o código de domínio da aplicação
	+ Inversão de dependência
		+ Não é o domínio que dispara as requisições para suas prórias regras
	+ Favorece boas práticas de orientação a objetos
	+ Código de domínio de com alta "testabilidade"
	+ Independência de frameworks e detalhes de infraestrutura

# Domain Model
## Entidades


## References
1. 