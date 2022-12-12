**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 02-12-2022
Created-time:: 13:44
Liteturature-Note:: [[🗃️  Zettel's/📝 Literature Notes/Mediator Refactoring Guru]]
Tags:: 

# Mediator Refactoring Guru
## Também conhecido como
+ Mediador, Intermediário, Intermediary, Controlador, Controller
## Propósito
+ Padrão de projeto comportamental
+ Permite que reduzirmos dependências caóticas entre objetos; 
+ Restringe comunicação direta entre objetos 
	+ Os força a colaborar através de um mediador
![Padrão de projeto Mediator](https://refactoring.guru/images/patterns/content/mediator/mediator.png?id=0264bd857a231b6ea2d0c537c092e698)
+ A padrão sugere que deveriamos cessar a comunicação direta entre os componentes que queremos tornar independentes uns dos outros; 
+ Os componentes devem colaborar indiretamente;
	+ Chamamos um objeto mediador 
		+ redireciona as chamadas para os componentes apropriados
	+ Componentes dependem apenas de uma única classe mediadora ao invés de serem acoplados a dúzias de outros colegas

+ O pattern permite que encapsulemos uma complexa rede de relações entre vários objetos em apenas um objeto mediador
+ Quando menos dependências uma classe tem, mais fácil será a modificação, estensão e reutilização.![[📂 Files/Image/rwchm42y.bmp]]
+ 
## References
1. 