**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 09-12-2022
Created-time:: 08:08
Liteturature-Note:: [[🗃️  Zettel's/Literature Notes/Capítulo 6 - Os Conceitos Relacionais]]
Tags:: 

# Capítulo 6 - Os Conceitos Relacionais

+ Criação de classes a partir ou com a ajuda de outras classes

## Herança
+ É um relacionamento entre uma classe pai e suas classes filhas, especializações dessa classe pai. A subclasse dessa herança é uma classe que consegue reaproveitar os atributos e métodos da classe pai. 
+ A herança é um recurso que pode ser utilizado apenas com classes  e não com objetos 

+ Reúso 
	+ Herança e abstração
	+ Quando criamos uma classe de uma forma mais abstrata possível, é porque queremos reutilizar seu conceitos e membros em outros conceitos similares
+ Vantagem
	+ Reúso
	+ Definição de subtipos
		+ "Um conceito é do tipo de outro conceito"
		+ ![[📂 Files/Image/Pasted image 20221209082533.png]]
	+ Utilizar herança somente pelo reúso pode nos levar a cometer erros gravas de modelagem
## Tipos de classe
### Classes abstratas
+ Implementação completa do conceito de abstração
+ Classes que representam conceitos genéricos que não vale a pena trabalhar com eles diretamente
+ Não podem ser instânciadas
### Classes concretas
## Upcast e Downcast
+ Upcast
	+ operação onde um subtipo é promovido para o tipo da superclasse
	+ Operação implícita
	+ Como uma subclasse é do tipo da superclasse, ela cabe dentro da superclasse
+ Downcast
	+ Superclasses são convertidas em subclasses
	+ Com a classe object pedemoe realizar downcast sem nenhum erro
# O Polimorfismo 
+ Fazer com que um método se comporte de forma diferente dependendo do objeto instânciado
+ Utilizar objetos distintos que realizam a mesma assim, sendo essa moldada de acordo com o objeto
+ Para termos uma relação de polimorfismo, precisar ter uma relação de herança
# Associação

## References
1. 