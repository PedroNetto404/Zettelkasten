**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 07-12-2022
Created-time:: 19:24
Liteturature-Note:: 
Tags:: 

# POO Thiago Leite e Carvalho
## Prefácio
+ POO por mais que seja um pouco mais abstrato é mais natural de se utilizar em situações do dia a dia. 
![[📂 Files/Image/Pasted image 20221207193456.png]]
+ Algoritmo
	+ Sequência de passos orquestrados
		+ Prodicao de um resultado
## Visão Geral da Orientação a objetos
+ Dados de uma entidade devem estar somente junto a operações que manipulam exclusivamente esses dados.
+ Uma entidade troca informações com outra somente através da chamada da métodos.
+ ![[📂 Files/Image/Pasted image 20221208090455.png]]
+ Em programação estruturada temos uma desassociação de dados e funções; 
	+ Somente dados são trafegados
+ Em POO
	+ Dados e funções que manipulão esses dados são tafegados
		+ Estão definidos juntos em uma mesma unidade de cdódigo

### Facilidades que POO oferece
#### Reúso
##### Reúso de dados
##### Reúso de Comportamentos
#### Coesão 
+ Cada entidade deve ser responsável por possuir informações e executar tarefas que dizem respeito somente ao concetio que pretender representar
+ A ideia é não misturar responsabilidades e não sobrecarregar o código-fonte com dados e tarefas que não lhes dizem respeito
#### Acoplamento
+ Para atingirmos uma boa coesão, devemos separar as responsabilidades e acoplar a outras unidades de código.

> O paradigma estruturado se preocupa mais no "como fazer algo" do qu3e "o que deve ser feito". 
> 	Estruturação limitada
> 	Leva em consideração a manipulação da informação do que sua representação.

#### GAP Semântico
+ Fosso semântico
	+ Diferenã entre duas rerpresentações de conceitos por diferentes representações linguísticas. 
	+ No contexto da programação 
		+ Diferença entre a representação de um contexto do conhecimento em linguagens (paradigmas) de programação.
		+ Representação de conceitos que as aplicações necessitam para se tornarem projetos de sucesso
## Exercícios do capítulo 
### 1: Como poderiámos diferenciar o paradigma estruturado do paradigma orientado a objetos? 
+ Podemos diferenciar a programação estruturada da orientada objetos pela forma como trabalhamos com nossas estruturas de dados, seja na sua representação, quanto na manipulação. Em OO, os dados são encapsulados em classes e trabalhados através de métodos internos a essa classe. Já em programação estruturada há uma dessasociação entre dados e funcionalidades e ações, gerando um problema de coesão e de reutilização.
### 2: Podemos dizer que a OO trouxe o reúso de código? Justifique sua resposta
+ Não. Em paradigmas anteriores a OO, já possuiamos alguns recurso para a reutilização de código. Em C, podemos criar structs para agrupar dados que dizem respeito a mesma entidade e realizar associações entre as structs para casos mais complexos. Tinhamos também o recuso de separar métodos em arquivos distintos e utilizar-los de vários pontos a partir de headers. POO só nos dá mais facilidade e recursos mais interessantes para se reutilizar código.
### 3: qual a importância da coesão? 
A coesão diz respeito a correta separação entre dados e comportamentos de acordo a entidade que se quer representar do mundo real (seja ela abstrata ou concreta). 
### 4: Discorra sobre a seguinte frase: "Uma das vantagens de OO é que ela evita  a ter códigos acoplados"
+ Somente o paradigma não vai suficiente para termos códigos menos acoplados. Devemos pensar muito mais como se dá o design de nossas classes. 
### O que vem a ser um "Gap semântico", no contexto da programação? 
+ Vem a ser forma como representamos contextos em diferentes linguagens de programação. 
+ Vai muito de encontro com o paradigma uitlizado. Em POO, as entidades são representados por classes. 

## References
1. 