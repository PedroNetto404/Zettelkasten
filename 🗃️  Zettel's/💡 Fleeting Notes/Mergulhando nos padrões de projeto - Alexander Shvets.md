**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 29-12-2022
Created-time:: 16:36
Liteturature-Note:: [[🗃️  Zettel's/Literature Notes/Mergulhando nos padrões de projeto - Alexander Shvets]]
Tags:: 

# Mergulhando nos padrões de projeto - Alexander Shvets
## O básico de POO
+ Envolver pedaços de dados, e comportamentos relacionados a esses dados, em uma coleção chamada de objetos, que são construídos em um conjunto de "planos de construção", chamados de classes 
+ Dados armazenados dentro dos campos de um objeto representam o estado do objeto
	+ Os Métodos que operam sobre o estado de um objeto definem seu comportamento
+ Objetos são instâncias de classe
+ Classe
	+ Planta de construção de um objeto
		+ Definem a estrutura de um objeto
+ Hierarquia de classes 
	+ Superclasses
	+ Subclasses
		+ Podem sobreescrever o comportamento de métodos que herdam de suas classes parentes
			+ Tanto substituir quanto complementar e melhorar
## Pilares da POO
### Abstração
+ Modelagem dos objetos do programa baseado em objetos do mundo real.
	+ Objetos do programa não representam os originais 100% de precisão
	+ Nossos objetos apenas modelam atributos e comportamentos de objetos reais em um contexto específico, ignorando o resto.
+ ![[📂 Files/Image/Pasted image 20221229171347.png]]

#### Abstração
+ É um modelo de um objeto ou fenômeno do mundo real, limitado a um contexto específico
	+ Representa todos os detalhes relevantes para este contexto com grande precisão e omite o resto
#### Encapsulamento
+ Esconder detalhes de implementação
+ Cada objeto tem uma interface
	+ Parte pública do objeto
		+ Aberto a interação com outros objetos
+ Habilidade de um objeto de esconder parte do seu estado e comportamentos de outros objetos, expondo apenas uma interface limitada para o resto do programa.
+ Intefaces
	+ Contratos de interação entre objetos
![[📂 Files/Image/Pasted image 20221229172729.png]]
#### Herança
+ Habilidade de construir novas classes em cima de classes já existentes
	+ Reutilização de código
	+ Estender uma classse
	+ Mesma inteface que a classe mãe

## References
1. 