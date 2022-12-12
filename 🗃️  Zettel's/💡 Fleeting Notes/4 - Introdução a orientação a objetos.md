**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Done
Created-date:: 08-12-2022
Created-time:: 10:50
Liteturature-Note:: [[🗃️  Zettel's/📝 Literature Notes/4/5 POO Book]]
Tags:: 

# Introdução a orientação a objetos
## Definição
> A Orientação a objetos é um paradigma de análise, projeto e programação de sistemas de software baseados na composição e interação entre diferentes unidades de software chamadas de objetos

+ Não se preocupa apenas como ser um nova forma de programação
	+ Modelagem é muito importante
	+ Meio de se pensar de forma mais realista as necessidades dos softwares

## Fundamentos
### Abstração
> def.: Processo pelo qual se isolam características de um objeto, considerando os que tenham em comum certos grupos de objetos.

+ Não devemos nos preocupar com características menos importantes
	+ Apenas características essenciais
+ Incompletas e imprecisas por natureza
	+ A partir de um contexto incial
		+ Modelar necessidades específicas
+ Possibilidade de não trabalharmos com o conceito alvo diretamente, mas sim com suas abstrações
+ A partir de um modelo inicial, abstrato, adaptações são feitas para suprir necessidades específicas
+ ![[📂 Files/Image/Pasted image 20221208110245.png]]
### Reúso
+ Repetição de código
	+ Código frágil
	+ Propícios a resultados inesperados
	+ Podemos esquecer de atualizar algum ponto de algum código

+ Henraça 
	+ Reaproveitamento de código da classe mãe
	+ Acrescentamos comportamentos e dados pertinentes a especialização
+ Associação
	+ Uma classe pede ajudar para outra para realizar algo que ela não sabe fazer.
	+ Permite que uma classe forncessa uma parte de código para outra
	+ Códigos ficam mais 
		+ roubustos 
		+ Manuteníveis
		+ Fáceis de compreender

### Encapsulamento
![[📂 Files/Image/Pasted image 20221208111301.png]]

![[📂 Files/Image/Pasted image 20221208111727.png]]

+ Esconder complexidade
	+ detalhes de Implementação
	+ Não importa para quem solitou um processamento / comportamento como ele se dá. O ele precisa é apenas do resultado gerado.
	+ Apenas o resultado obtido é importante
+ Vantagem
	+ Mudanças se tornam transparentes
		+ Quem usa um processamento
			+ Não é afetado por mudanças de implementações
	+ Ocultamento das informações 
		+ Blindar os aspectos internos do objeto em relação ao mundo exterior
			+ Cria-se uma casca ao redor das características, que tem como finalidade evitar resultados inesperados, acessos indevidos, entre outros problemas
			+ ![[📂 Files/Image/Pasted image 20221208112400.png]]
### Exercícios 
#### 1. Por que é importante se preocupar com a abstração? 
+ Devemos nos preocupar com a abstração para que possamos modelar nossas classes de uma maneira mais clara e eficiente separando as características e comportamentos fundamentais para o funcionamento do conceito que queremos representar. 
#### 2. O que vem a ser o encapsulamento e qual a sua importância para a orientação a objetos? 
+ Encapsulamento é o ato de esconder detalhes complexos em um módulo que será consumido por algum cliente. A importância do encapsulamento para orientação a objetos se dá no fato de pordermos esconder complexidades e detalhes no interior de objetos e fornecessar uma interface de acesso controlada para as classes clientes nos gerando uma maior confiabilidade sobre a coerência das informações e processamentos. 
# Capítulo 5 - Os Conceitos estruturais
+ É com a combinação de dos conceitos estruturais que srugem os demais conceitos de OO . 
## 5.1 Classes
+ Tudo na programação orientada a objetos começa com uma clase
+ Unidade inicial e mínima de código na OO
+ É a partir de classes que criamos objetos

> def.: Estrutura que abstrai um conjunto de objetos com características similares
> 	Define o comportamento de seus objetos através de métodos e os estados possívies destes objetos através de atributos. 
> 	Uma classe descreve os serviços providos por seus objetos e quais informações eles podem armazenar. 
> 	

+ O objetivo de uma classe é definir, servir de base, para o que futuramente será o objeto. 
+ Através dela criamos o molde aos quais os objetos deverão seguir. 
	+ o molde define quais informações serão trabalhadas e como elas serão manipuladas. 
+ O conceito de classe é fundamental para a aplicação da abstração
	+ Uma classe pode ser definida como uma abstração de uma entidade, seja ela física ou conceitual do mundo real
+ Como podemos identificar as necessidades de um software
	+ Pensar nos substantivos dos documentos de requisitos
		+ Nomear tudo que conhecemos
		+ A partir deles que se possibilitará identificar quais entidades um software terá de modelar. 
+ Quando criamos uma classe
	+ Definimos um tipo de dado abstrato
	+ Conjunto de operações que manipulam esses dados
+ Classes como nomes pobremente definidos
	+ Dificultam o entendimento do código
	+ Leva a erros de utilização
### 5.2 O Atributo
+ Define estrutura de dados de uma classe
	+ Conjunto
		+ Características que farão parte dos objetos instânciados a partir dessa classe. 
+ Podem ser representados a partir de substantivos ou adjetivos
+ Processo de caracterização da classe; 
+ Contexto de uso da classe
	+ Impacta diretamente no processo de definição de seus atributos
+ Nem sempre uma informação de um objeto precisa ser representado diretamente por um atributo. 
	+ Alguns campos como idade podem ser processados dinamicamente por um processamento. 
+ O nome de cada atributo deve ser expressivo o suficientes para que possamos ter uma maior facilidade de entidamento
#### Adendo: String
+ Tipo de dados não primitivo usado para representar textos
+ Evolução do vetor de char (char[]) que temos em C
+ Mesmo não sendo um tipo pritivo, ele é tratado com um 
### 5.3 O método
+ Pedaço de código que é disponibilizado pela classe
+ Serve para identificarmos quais serviços, ações e funcionalidades que a classe em questão provê
+ Responsáveis por definir e realizar um determinado comportamento pertinente a classe
+ Devemos pensar em verbos, devido a definição de ações
+ Cada método expressa alguma funcionalidade que a classe queira oferecer
#### Construtor e destrutor
+ Construtor é um método utilizado durante o processo de instânciamento de objeto de uma classe
	+ Promovor valores iniciais que um objeto precisar ter 
	+ Algumas linguagens possuem construtores inplícitos, como Java e CSharp
+ Destrutor
	+ Elimitar o objeto construido a partir da classe
+ Garbage Collector
	+ Possui um algoritmo de identificação de objetos ociosos
#### Sobrecarga de método
+ Manter  a abstração
+ A assinatura de um método não inclui seu retorno

> Nomeclatura: quando queremos nos referenciar a atributos ou métodos de uma classe / objeto podemos usar a palavra membro
> 	Embloba os dois conceitos

### 5.4 O Objeto 
+ Quando usamos OO para construir um sistema
	+ Primeiro pensamos nos objetos que ele vai manipular / representar
		+ Definir classes que serviram de abstração base para que os objetos venham a ser criados
+ Representação de um conceito / entidade do mundo real, seja ela palpável  ou não
+ Para cada objeto desse definir-se uma classe que posteriormente será utilizada para criar objetos do mesmo tipo, mas distintos
+ Classes e objetos são tipos de dados não primitivos definidos pelo usuário
	+ Há operadores específicos para que trabalhemos com esses tipos. Por exemplo, o operador new
### 5.5 O estado de um objeto
+ Mudança de valores de um atributo
+ Estado de um objeto
	+ Conjunto de valores dos seus atributosd em um determinado instânte
		+ Podem mudar a qualquer instânte e a qualquer momento, sobre qualquer circunstância
	+ Objeto pode ter quantos estados necessitar durante seu tempo de execução
+ Dois objetos criados a partir de uma mesma classe sempre são diferentes
	+ Cabe quem definiu a classe especificar quis serão os critérios utilizados para a diferenciação
![[📂 Files/Image/Pasted image 20221208143853.png]]
+ Em c# o operador is, verifica se um objeto qualquer foi instanciado a partir de uma classe que foi passada
## A Representação numérica de um objeto
### Hashcode
+ Número gerado a partir do estado corrente do objeto (valores do seus atributos em determinado momento)
+ Serve para otimizar e pesquisar em estruturas que utilizam tables hash (tabelas de dispersão)
	+ Quando fazemos pesquisas, comparamos objetos iguais 
		+ Código hash auxiliar o equals a filtrar objetos para diminuir a quantidade de comparações necessárias para se chegar ao objeto necessário
## A Representação padrão de um objeto
+ Representação textual de um objeto
+ Método ToString
	+ Devemos encapsular o comportamento de exibição no objeto para que não precisemos utilizar uma concatenação de gets

## Tipos de atributos e métodos
+ Ambos podem ser de instância ou estáticos
+ De instância
	+ Embora eles tenham sidos definidos no escopo da classe, eles pertencem a cada instância 
		+ Só podem ser acessados a partir de suas instâncias 
+ Estático
	+ Pertente somente a classe e não as instâncias dessa classe
	+ Podem ser acessado através dos objetos, mas é uma má prática
	+ Valores armazenados são iguais para todas as instâncias
## Mensagem
+ Processo de ativação de um método de objeto
+ Ocorre quando uma requisição a esse método é realizada
	+ Disparando a execução do comportamento descrito descrito por usa classe
	+ Pode ser direcionada diretamento a classe, caso esssa seja a um método estático
> 	A definição anterior deixa bem claro que, quando requisitamos  
	que um comportamento (código) de um método seja executado,  
	estamos passando uma mensagem a esse método. Mensagens  
	podem ser trocadas entre métodos dos objetos/classes, para serem  
	realizadas as atividades inerentes a cada um.

## Exercícios do capítulo 
### 1: Qual a relação entre o conceito de classe e o conceito de  abstração?
+ O conceito de abstração é separmos qualidades e características de um conceito do mundo real seja ele concreto ou não de uma forma decionada nos esquivando das pontos irrelevantes para oa contexto do problema resolvido. Uma classe é utilizada justamente para personificarmos nossa abstração em uma unidade de código que agrupa toda uma estrutura de dados e funcionalidade que operação sobre esses dados. 
### 2: Qual a diferença entre classe e struct? 
+ Uma classe nos oferece mais recursos para que possamos trabalhar com nossas abstrações, tais como herança, poliforfismo e etc. Structs são objetos que tem em sí uma estrutura de dados, desprovida de funcionalidades e que não pode realizar herança
## References
1. 