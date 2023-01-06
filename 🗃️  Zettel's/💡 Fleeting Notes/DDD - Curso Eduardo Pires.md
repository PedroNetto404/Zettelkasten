**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 05-01-2023
Created-time:: 20:36
Liteturature-Note:: [[🗃️  Zettel's/Literature Notes/DDD - Curso Eduardo Pires]]
Tags:: 

# DDD - Curso Eduardo Pires
+ DDD não é uma receita pronta sobre como desenvolver uma arquitetura baseada em camadas do tipo: 
	+ Presentation 
	+ Services
	+ Application
	+ Domain
	+ Infra
+ É uma abordagem de modelagem de software com foco na complexidade da aplicação. 
+ Conhecimento do domínio
	+ Implementação de complexas regras / processos de negócio
+ Domain-Driven Desing é sobre Design
	+ Design guiado pelo conhecimento do domínio
> "Toda arquitetura é design, mas nem todo design é arquitetura"

## Big Ball of Mud
+ Grande bola de lama
	+ Indica um anti-padrão para arquitetos e desenvolvedores e refere-se a um software que possui todos os "problemas" que resultam em um código díficil de entender, manter e estender
## Como o DDD poderia resolver? 
+ Capturar elementos conhecidos do negócio
+ Organiza-los em conmjunto de princípios
+ Cirar um modelagem de domínio com foco no desenvolvimento
+ Abordagem diferenciada para desenvolver a regra de negócio

> Uma guia de como entender um negócio, organizá-lo em um conjunto de princípios, criar uma modelagem com base no negócio e implementar utilizando diversas boas práticas

## Pontos chave do DDD
### Ubiquitous Language
### Bounded Context
### Context Map
## Domain-Driven Design: Entender a fundo o negócio
+ Entender a fundo o processo
+ Negócio pode ser muito complexo
+ Muitas regras de negócio e processos
+ ![[📂 Files/Image/Pasted image 20230105214400.png]]
1. Extrair a linguagem ubíqua
	1. Deixar de extrair ou entender é um dos piores erros que podemos comentar ao implementar o DDD
2. Modelagem estratégica
 ![[📂 Files/Image/Pasted image 20230105214626.png]]
	1. Como pensar em entender a aplicação e dividi-la em blocos
	2. Capturar grandes elementos da aplicação e separa-los em: 
		1. Domínio principal
		2. Domínio Auxiliar
		3. Domínio Genérico
3. Context Map
	1. Contextos da aplicação
	2. Tipos de relacionamentos entre os contextos
![[📂 Files/Image/Pasted image 20230105214741.png]]

4. Definir a Arquitetura dos contextos
	1. Definição de qual será a arquitetura dos contextos e como eles vão se correlacionar
![[📂 Files/Image/Pasted image 20230105214917.png]]
![[📂 Files/Image/Pasted image 20230105215020.png]]
## References
1. 