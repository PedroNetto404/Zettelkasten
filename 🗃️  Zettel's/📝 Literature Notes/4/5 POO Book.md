**Meta data**
Note-type:: #Zettel/NoteType/Literature 
Note-Status:: #Zettel/Status/Pending
Created-date:: 08-12-2022 
Created-time:: 21:27
Permanent-Note:: [[🗃️  Zettel's/Permanent Notes/Abstração para OO]] [[🗃️  Zettel's/Permanent Notes/Encapsulamento]] [[🗃️  Zettel's/Permanent Notes/Membros estáticos]] [[🗃️  Zettel's/Permanent Notes/Membros de instância]] [[🗃️  Zettel's/Permanent Notes/Construtor]] [[🗃️  Zettel's/Permanent Notes/Destrutor]] [[🗃️  Zettel's/Permanent Notes/Estado de um objeto]] [[🗃️  Zettel's/Permanent Notes/Orientação a Objetos]] [[🗃️  Zettel's/Permanent Notes/Classe em OO]] [[🗃️  Zettel's/Permanent Notes/Objeto em OO]]
Tags::

# 5 POO Book

Orientação a objetos é um paradigma de programação que se baseia na ideia de programarmos na composição e interação entre unidades de software chamados de objetos, que tem internamente em si toda uma estrutura de dados e comportamentos que manipulam esses dados. Nos preocupamos muito mais com o design de nossos componentes do que puramente a implementação de cada parte. 
De forma simplificada, na programação orientada a objetos, nós modelamos nossos componentes de software com abstrações trazidas do mundo real, representando entidades e conceitos. 

A abstração em OO é um fundamento que nos diz para modelarmos nossas entidades de acordo com a abstração que o contexto exige; isto é, devemos olhar para nossas entidades com cuidado, nos atentando a dados e comportamentos que são realmente importantes para o problema. Não devemos nos preocupar com características irrelevantes. 
A partir de uma abstração base feita que modela de forma abstrata uma situação, podemos criar modelos específicos para atender a objetivos específicos

OO nos fornece recursos para a reutilização de código com maior facilidade. Podemos utilizar herança para estender um módulo base e herder todos os membros já existentes ou composição, trazendo como membro da entidade outra entidade. Do último modo temos um acoplamento um pouco menor comparado a herança, tendo dentro de nosso módulo, outro que executa um serviço que precisa ser feito. 

Outra característica fundamental da OO é o encapsulamento. Ao encapsularmos detalhes de implementações em nossas classes clientes deixamos o nosso projeto mais organizado e fácil de dar manutenção. Caso precisarmos alterar a implementação de membros que estejam encapsulados, as classes clientes não iram ficar sabendo da alteração. 
Ao encapsular um objeto, criamos uma barreira entre sua estrutura interta e o mundo externo, onde o objeto só se comunica com outros através de brechas nessas barreiras ou pontes que expõem alguns membros para o exterior. 

Uma classe é a unidade mínima em OO. Nela, definimos como objetos instânciados vão se comportatar e quais serão suas características. 
Podemos entender uma classe como a abstração de uma entidade

Uma atributo de uma classe é uma característica de uma entidade que será abstraida em uma classse, isto é, faz parte do conjunto de dados que compõem a caracterização de uma classe.

Um método é um pedaço de código oferecido por uma classe para realizar alguma determinada ação ou funcionalidade dessa classe.

Membros de instância pertencem a cada objeto instânciado a partir de determinada classe. Cada um deles tem em sí todos os membros de instância da classe, podem trabalhar com seu estado em determinado momento. 

Membros estáticos são membros que não pertencem a uma instância específica, mas sim a própria classe. 

# References
1. 