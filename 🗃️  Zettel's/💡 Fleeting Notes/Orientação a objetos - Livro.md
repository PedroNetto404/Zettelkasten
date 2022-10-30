**Meta data**
Note-type:: #FleetingNote 
Note-Status:: #LiteratureDone 
Tags:: 

# Orientação a objetos - Livro
## Intro
+ Qual a diferença entre código procedural e código com POO? 
	+ Em código procedural nos importamos com a implementação, com a escolha do melhor algortimo para aquele problema; 
	+ Em linguagens orientadas a objetos a implementação tamb´me sé fundamental, mas pensar no prijeto de classes, em como eleas se encaixam e como serão estendidas é o que importa; É pensar muito mais que só em código. É desenhar cada peça do quebra-cabeça e pensar como elas sem encaixam juntas
	+ Códigos em POO como uma torre de cartas em que componentes de baixo nível afetam componentes de alto nível; 
## A coesão e o  SRP
+ Uma classe coesa é aquela que possui apenas 1 responsabilidade;
+ Uma classe que toma conta apenas de um conceito no sistema; 
+ São mais simples, tem menos código e seu reúso é maior; 
+ Classes não coesas -> Chances de dar defeitos enorme; 
	+ Fácil com que um defeito em uma classe seja propagado para outra; 
	+ Levar uma classe inteira para outro ponto do sistema apenas para utilizar um método único é um erro grave; 
	+ Não para de crescer nunca; 
+ Exemplo da classe Calculadora de Salário 
	+ Cresce indefinidamente sempre que eu novo cargo surgir ou sempre que uma regra de cálculo nova surgir
+ ![[📂 Files/Pasted image 20221027163432.png]]
+ ![[📂 Files/Pasted image 20221027163442.png]]
+ Comportamentos que tem o mesmo padrão de estrutura podem ser definidos em interfaces
+ ![[📂 Files/Pasted image 20221027163609.png]]
+ ![[📂 Files/Pasted image 20221027163640.png]]
![[📂 Files/Pasted image 20221027163711.png]]
![[📂 Files/Pasted image 20221027163720.png]]
+ Classes que crescem indefinidamente devem ser quebradas em classes menores cara uma cumprindo uma responsabilidade; 
+ Métodos privados são uteis para melhorar a legibilidade de um método maior, mas caso responsabilidades distintas sejam identificadas, é melhor separar em classes diferntes para que no futuro possamos reutilizar esses comportamentos; 
+ Se o código exige que uma mudança seja feita em vários pontos do sistema para que uma mudança seja propagada, o código está mal projetado; 
	+ Encapsular comportamentos em um único lugar
### Adendo
#### MVC
+ Padrão Arquitetural; 
	+ 3 Camadas; 
		+ Camada de modelo
			+ Classes e entidades responsáveis por todas as regras de negócio da aplicação; 
		+ Camada de visualização
			+ Responsável pela interface com o usuário
		+ Camada do controlador
			+ Faz a ligação entre a interação do usuário na camada de visualização e as regras de negócio que vivem no modelo; 
## Quando usar métodos privados? 
+ Pensar com detalhes  em cada método público, seu nome e assinatura é fundamental. 
	+ Eles serão consumidos pelas classes clientes. 
+ Métodos privados tem outro foco; 
	+ A ideia deles é garantir a legibilidade do método público
	+ Ao ler uma única linha, a que invoca o método privado, em vez das 30 linhas da
sua implementação, você poupou algum tempo.
## References
1.  