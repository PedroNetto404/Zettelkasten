**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Done
Tags:: 
Created:: 11-11-2022 12:18
Literature-Note::[[🗃️  Zettel's/📝 Literature Notes/Orientação a objetos e SOLID para ninjas]]
# Orientação a objetos e SOLID para ninjas

# Capítulo 2:  A coesão e o tal do SRP
> Uma classe coesa é aquela que possui uma única responsabilidade

> Toda classe que não é coesa tende a não parar de crescer nunca

> Separamos as responsabilidade em classes e não em métodos pelo fato de buscarmos a reutilização das funcionalidades de uma classe provê. 

> Quando encapsulamos as funcionalidades em uma classe, deixamos o projeto de manutenção bem mais fácil. Uma mudança em uma problema que está encapsulado será propagada imediatamente e m todas as classes clientes que a consume. 

> Se para que uma mudança seja propagada na aplicação são necessárias modificações em várias partes do código, erramos no design dos nossos componentes. 

+ Dependências implícitas
	+ Aquelas dependências que não conseguimos perceber
+ Comentário a respeito do Padrão Arquitetural MVC
	+ Camada de modelo
		+ vivem as classes de entidades responsáveis por todas as regras de negócio da aplicação; 
	+ Camada de apresentação
		+ Responsável pela interface com o usuário; 
	+ Camada de controladores
		+ Ligação entre a interação do usuário na camada de visualização e as regras de negócio que vivem no modelo
## 2.5 Quando usar métodos privado ?
+ Devemos pensar em cada detalhe de um método público, pois ele será exposto as classes que iram consumir nosso componente. 
+ O foco dos métodos privados é outro, sendo a melhora da legibilidade dos métodos públicos. 
	+ É muito mais fácil ler uma única linhas que representa algum processo de um método público, vendo um nome que representa uma ação, do que ler toda a implementação.
## 2.6 Falta de coesão em controllers
+ Controllers são classes que servem para conectar o mudno web, HTTP etc, com o mundo das regras de negócio. É basicamente um conversor de um mundo para o outro. 
> Fuja de controladores “gordos” que fazem tudo. Separe bem cada uma das responsabilidades, sejam elas de negócio ou de infraestrutura.

+ São classes que apenas coordenam processos, são sendo responsáveis por implementar funcionalidades

## 2.7 Inveja da outra classe
+ Se em uma classe apenas manipulamos o comportamento de outra classes, utilizando exclusivamente seus métodos públicos, talvez essa lógica devesse estar dentro da classe manipulada.
## 2.8 SRP Single Responsibility Principle
> Uma classe deve ter uma, e apenas uma, razão para mudar. 

> Classes coesas tendem a ser menores e mais simples, menos suscetíveis a problemas, 
 reúso mais fácil e chance de propagarem problemas para outras classes é menor. 

> Dois comportamentos "pertencem" ao mesmo conceito / responsabilidade se ambos mudam juntos

> Como encontrar classes que não são coesas? Procure por classes que possuem muitos métodos diferentes; por classes que são modificadas com frequência; por classes que não param nunca de crescer

> Devemos separar ao máximo toda e qualquer infraestrutura (MVC, ORMS ou outras bibliotecas) dos nossos modelos e regras de negócio

> Não é o nosso framework MVC que vai fazer seu software parar e nem ele que será mantido no futuro. São regras de negócio. Essas classes é que precisam de atenção. 

> Se a classe tem algum contato com infraestrutura, não escrevemos regras de negócio alguma nelas; Se a classe tem regras de negócio, ela não deve conhecer nenhuma infraestrutura. 

# Capítulo 3: Acoplamento e DIP
+ O que significa um acoplamento bom e um acoplamento ruim? 
	+ Ao dependermos de classes que mudam bem pouco, isto é, ao depender de classes estáveis, criamos um bom acoplamento. Dificilmente essas classes vão mudar e se mudarem, será com melhorias em entregas que já acontecem. 
> A partir do momento em que uma classe possui muitas dependências, todas elas podem propagar problemas para a classe principal.
> O reúso também fica prejudicado, pois se quisermos reutilizar essa classe em outro ponto da aplicação precisariamos levar todas as dependências. 

> A classe, quando possui muitas dependências, torna-se muito frágil, fácil de quebrar. 

## 3.2 Estabilidade de classes
> Devemos nos acoplar a classes, interfaces, módulos, que sejam estáveis, que tendam a mudar muito pouco. 

> A ideia de nos acoplar a interfaces vem do fato que de elas definem apenas um contrato para um classe que irá implementa-lá, sendo que ela pode ter várias implementações, nos provendo uma certa segurança e estabilidade.

> Interfaces coesas são aqulas cujos comportamentos são simples e bem definidos. 

> Interfaces coesas tendem a mudar pouco e são mais reutilizáveis.

> A ideia de reduzir o problema do acoplamento não é deixar de acoplar. É começar a acoplar-se com módulos estáveis, que  tendem a mudar menos.

## 3.4 - DIP Dependency Inversion Principle
> Sempre que uma classe depender de outra, ela deve depender sempre de outro módulo estável do que ela mesma.
> Nossas classes devem sempre andar em direção a estabilidade, depender de módulos mais estáveis que ela própria. 

> Abstrações tendem a ser estáveis, e implementações instáveis. 
> Se estamos escrevendo uma classe com regras de negócio e precisarmos depender de outro módulo, idealmente esse outro módulo deve ser uma abastração. Tentar ao máximo não depender de outras implementações (afinal, elas são instáveis); 

> Se estamos criando uma abastração essa essa abstração precisa depender de um módulo, esse outro módulo também precisa ser uma abstração.

>Abstrações não devem depender de implementações! Abstrações deve ser estáveis; 

> Módulos de alto nível não devem depender de módulos de baixo nível. Ambos devem depender de abstrações. 

> Abstrações não devem depender de detalhes. Detalhes devem depender de abastrações. 

![[📂 Files/Image/Pasted image 20221111133323.png]]

+ Antes
	![[📂 Files/Image/Pasted image 20221111134052.png]]
+ Depois
+ ![[📂 Files/Image/Pasted image 20221111134104.png]]
> Podemos pensar em "agrupar" dependências. Dessa forma, você diminui o acoplamento e aumenta a coesão da classe
+ Acoplamento lógico
	+ É um acoplamento que não é claro do ponto de vista arquitetural
	+ O acoplamento lógico pode nos indicar um mau projeto de classes, ou mesmo código que não está bem encapsulado. 
> Conclusão: 
> 	- Problema de acoplamento; 
> 	- Problemática propagação de mudanças
> 	- Devemos nos acoplar a classes estáticas, ou seja, classes que tendem a mudar pouco

# Capítulo 4: Classes abertas e o OCP
> Classes não coesas devem ter suas responsabilidades divididas em pequenas classes, e que classes devem tentar ao máximo se acoplar com classes que são estáveis, ou sejam, mudam pouco. 

+ Para realizar mudanças no código não precisamos ter o trabalho de acessar múltiplos arquivos para tal; 
+ Devemos buscar o equilíbrio entre acoplamento e coesão

+ Para um sistema que tende a evoluir e crescer precisamos desenvolver de uma forma que a criação de novas regras seja mais simples, e que essa mudança propague automaticamente para todo o sistema. 
## OCP
+ Sempre devemos escrever classes que são abertas para extensão, mas fechadas para modificação
> Estender o comportamento delas deve ser fácil, mas ao mesmo tempo elas devem ser fechadas para alterações. Ou sejam ela não deve ser modificada (ter seu código alterado) o tempo todo;

+ Como possibilitar que uma regra seja alterada sem a necessidade de mexer no código? 
	+ Devemos criar uma abstração para o problema, e fazer com que essas abstrações possam ser injetadas na classe que as usa
![[📂 Files/Image/Pasted image 20221111142325.png]]
+ Com abstrações em mãos, podemos fazer o uso delas
	+ O fato de termos diferentes implementações para a mesma abastração, é necessário também que a troca entre elas seja fácil.
		+ Deixamos de instânciar as implementações concretas dentro da classe e passamos a recebe-lás pelo construtor. 
			+ Sempre que instânciamos uma classe dentro de outra, perdemos a oportunidade de trocar essa implementação em tempo de execução
> Depender de abstrações deixa a classe aberta para modifcações. Isso nos possibilita mudar as dependências a qualquer momento

![[📂 Files/Image/Pasted image 20221111142902.png]]

![[📂 Files/Image/Pasted image 20221111143027.png]]
## 4.3 Classes Extensíveis
+ O exemplo anterior nos mostra que as classes obdecem o OCP, pois para que alteremos o comportamento da classe Calculadoras de preços, basta que passemos implementações diferentes das interfaces. Note que não precisamos alterar a classe em sí, estando ela fechada para modificações.
+ Como a classe ainda depende de interfaces que tender a ser estáveis, temos uma maior coesão e baixo acoplamento
> Pensar em abstrações nos ajuda a resolver o problema do acoplamento e, de quebra, ainda nos ajuda a ter códigos facilmente extensíveis. 

> Trabalhar com orientações a objetos é lidar com a acoplamento, coesão, pensando em abstrações para nossos problemas. Quando se tem uma boa abstração, é fácil evoluir o sistema. 
> O nosso sistema evolui por novas implementações dessas abastrações, previamente pensadas,  e  não por meio de diversos ifs espalhados por todo código. 

> O Projeto de classes é fundamental. A implementação é, claro, importante, o código é o que dá via à arquitetura pensada. Mas em um sistema OO, pensar no projeto de classes é o que garantirá a facilidade e manutenção. 

> Mudar o comportamento de uma classe sem alterar seu código. Um classe aberta para a extensão, mas fechada para a modificação nos permite alterar seu comportamento sem editar uma linha de código interno.

> 	Códigos flexíveis são importantes, têm um custo agre-
	gado: eles, com certeza, são mais complexos do que códigos não tão flexíveis. Olhar para um código, entender as abstrações que o permeiam e como as dependências interagem entre si pode não ser simples.

+ Mocks objects
	+ Sãon objetos que dublam outros objetos, simplesmente para facilitar a escrita dos testes
![[📂 Files/Image/Pasted image 20221111153747.png]]

> Ao simularmos o comportamento das dependências conseguimos verificar se a classe testada apresenta erro. Como as dependências são simulações. Caso aconteça erro, já sabemos que o erro é da própria classe testada.

+ Mocks são dublês
+ Se o código é difícil de ser testado, é porque o código pode ser melhorado.
> 	Um código fácil de ser testado é provavelmente um
	código bem projetado; já um código difícil de ser testado tem grandes chances de conter problemas de design

> É bastante simples de entender o motivo disso. O teste é simplesmente um pedaço de código que instancia uma classe, invoca um método com determinados parâmetros e verifica a sua saída. Se fazer somente isso está difícil é porque sua classe ou é altamente acoplada ou pouco coesa. E isso não é bom.

![[📂 Files/Image/Pasted image 20221111160229.png]]

## 4.6 Ensinando abstrações desde a base
+ Pensar em orientação a objetos é primeiro pensar na abstração depois pensar na implementação. 
 > Essa é uma mudança de pensamento com quem programa procedural. Porque no mundo procedural, você está muito preocupado com a implementação. E é natural. No mundo OO, você tem que inverter: a sua preocupação maior tem que ser com a abstração, com o projeto de classes.

> Classes abertas são aquelas que deixam explícitas as suas dependências. Dessa maneira, podemos mudar as implementações concretas que são passadas para ela a qualquer momento, e isso faz com que o resultado final da sua execução mude de acordo com as classes que foram passadas para ela. Ou seja, conseguimos mudar o comportamento da classe sem mudar o seu código. 

> Essa é uma mudança de pensamento com quem programa procedural. Porque no mundo procedural, você está muito preocupado com a implementação. E é natural. No mundo OO, você tem que inverter: a sua preocupação maior tem que ser com a abstração, com o projeto de classes.

## References
1. Orientação e Objetos para Ninjas - Casa do código 