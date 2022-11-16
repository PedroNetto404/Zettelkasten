**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 14-11-2022
Created-time:: 13:49
Liteturature-Note:: 
Tags:: 

# Capítulo 9 - Maus Cheiros de design

+ Code smells
##  Refused Bequest
+ Nome dado para quando herdados de uma classe, mas não queremos fazer uso de alguns métodos herdados. 
+ Quando a classe filha só precisa utilizar alguns métodos da classe pai. 
+ O problema é maior quando a classe filha cria resistência para ser tratada como um  tipo da classe pai. 
+ Quando uma classe filha herda da classe pai, mas "não quer algo", temos um problema de design
## Feature Envy
+ Note que dados para uma situação em que um método está mais interessado em um objeto do que seu objeto de origem.
> Criamos classes para agrupar dados e comportamentos que manipulam esses dados. 

> Devemos nos perguntar sempre que utilizar massivamente métodos de uma classe dentro de outra se esse comportamento não ficaria melhor dentro da prórpria classe manipulada.

## Intimidade inapropriada
+ Quando uma classe conhece muito dos detalhes de outra classe e/ou altera detalhes internos da classe diretamente.
+ Devemos buscar colocar comportamentos nos lugares corretos.
## God Class
+ São classes altamente acopladas 
+ Controlam muitos outros objetos do sistema
+ Tendem a crescer mais do que deveriam
+ Uma dependência pode forçar mudanças na classe que a consome. Uma classe que tem muitas dependências se torna muito frágil. 
+ ![[📂 Files/Image/Pasted image 20221114140313.png]]
+ Devemos buscar maneiras de reduzir o acoplamento, seja pensando em abstrações, ou mesmo dividindo as responsabilidades em classes com responsabilidades menores.

## Divergent Changes
+ Mal cheiro para classes não coesas
	+ Classe que sofre alterações constantes, devido as suas diversas responsabilidades.
	+ Classes não coesas possuem pouco reúso e apresentam mais bugs , sendo mais complexas do que deveriam. 
![[📂 Files/Image/Pasted image 20221114140631.png]]
## Shotgun Surgery
+ Comum em códigos procedurais e com encapsulamento ruim.
+ Característica de sistema mal modelado, com abstrações mal planejadas.
+ ![[📂 Files/Image/Pasted image 20221114140816.png]]
# Capítulo 10 - Métricas de código
## Complexidade Ciclomática
+ Quanto mais estruturas de desvio e repetição um método possui, maior é a quantidade de caminhos que ele pode tomar
+ Número de McCabe
	+ Quantidade de caminhos possíveis para determinado algoritmo qnt_ifs + 1
![[📂 Files/Image/Pasted image 20221114141457.png]]

## Tamanho de métodos
+ Uma classe com muitos atributos ou muitos métodos é bem difícil de ser mantida; 
+ Números de variáveis locais dos métodos
	+ Se o método precisa de muitas variáveis, provavelmente ele é muito complexo.
	+ Quantidade de parâmetros
+ Árvore de henraça
## Coesão e a LCOM
> Uma classe é um conjunto de atributos e comportamentos que manipulam esses atributos. Se a classe for coesa, esses comportamentos manipulam boa parte desses atributos, afim todos dizem respeito a mesma responsabilidade. 
> Se a classe não for coesa, ela provavelmente contém um conjunto de atributos que são manipulados apenas por outros métodos. É como se a classe estivesse dividida em 2 dentro dela mesma

![[📂 Files/Image/Pasted image 20221114143617.png]]

+ Métrica Lack of Cohesion of Methods (LCOM)
	+  Mede a falta de coesão de uma classe
	+ Quanto maior o número, menos a classe é coesa
![[📂 Files/Image/Pasted image 20221114143839.png]]

## Acoplamento aferente e eferente
### Acoplamento eferente
+ Quando uma classe depende de diversas outras classes
+ Quanto maior o acoplamento eferente mais frágil a classe se torna
### Acoplamento aferente
+ Mede quantas classes dependem da classe principal; 
+ É esse acoplamento com que nos preocupamos quando queremos ver se a classe é estável ou não.
+ Se ela é muito importante para o sistema, não deve ser alterada com frequência; ela é estável.
![[📂 Files/Image/Pasted image 20221114144307.png]]
## References
1. 