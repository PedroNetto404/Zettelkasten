Uma classe pode ser considerada coesa quando possui apenas uma razão para existir, isto é, apenas uma responsabilidade.
Observemos que uma classe não coesa ao longo do projeto tende a crescer indefinidamente, se tornando cada vez mais complexa e ilegível. 
O fato de buscarmos a coesão de uma classe se dá pela necessidade e oportunidade de futuramente porder reutilizar essas funcionalidades em outra parte do projeto. 

Quando deixamos as responsabilidades separas e as classes bem coesas, realizamos um processo de encapsulamento, deixando nosso trabalho de manutenção e extensão muito mais fácil. Obserque eu se quisermos fazer alguma mudança, basta apenas ir direto na classe que queremos modificar e não procurar por ai a esmo ou alterar várias partes do código para modificar algo.

Devemos ter muito cuidado com dependências implícitas, isto é, dependências que não conseguimos observar claramente

Em um projeto que utilizar do padrão de projeto MVC temos uma divisão das responsabilidades de nosso trabalho em 3 camadas principais: 
A camada de modelo é responsável pela modelagem de nossas entidades e regras, sendo objetos tanto anêmicos, quanto classes com uma estrutura funcional completa. 
A View, que é a camada de apresentação. Aqui, criamos um modo de apresentar os dados do modelo para o usuário. 
O controller, uma camada onde orquestramos processos. Ele é uma porta de entrada de solicitados vindas das nossas views, é uma ponto entre dois mundos. 

Devemos utilzar um método privado para melhorar a legibilidade dos métodos públicos. 
A nossa atenção deve ser mais acurada para métodos públicos, pois são eles que ficam exportos para as classes clientes. Temos que ser bem meticulosos na escolha de nome, retorno e parâmetros.

Devemos ter cuidado com classes que invejam outras classes. O que quero dizer é que se A consume a classe B em algum de seus métodos e simplesmente fica chamando os métodos públicos de B, sem fazer nenhuma outra manipulação, talvez esse comportamento devesse estar dentro da classe B.

O princípio da responsabilidade única nos diz que uma classe deve ter apenas uma e, somente uma, razão para mudar. Se mudamos a classe para alterar seu comportamento por 2 razões que são distintas, talvez a classe em questão estaja acumulando responsabilidades
Esse princípio fala para escrevermos classes coesas, que tendem a ser mais simples, fáceis de ler, dar manutenção e de reutilizarmos em outro ponto do código.
Classes que não atendem a esse princípio tendem a não parar de crescer.
Se uma classe tem contato com regras de infraestrutura ele não deve ter regras de negócio; se uma classe tem regras de negócio, não deve ter regras de infraestrutura.

Quando falamos de acoplamento queremos dizer diretamento em como nossas classes conversam na aplicação. Seja por herança, agregação ou composição, toda associação gera u m acoplamento. 
Devemos ter muito cuidado com acoplamento, pois um código muito acoplado fica engessado e o fato de um módulo não funcionar como esperado faz com que todo os outros fiquem prejudicados, como retirar uma carta da base de uma torre de cartas.
Mas não há mágica, se uma classe precisa se comunicar com outra, ela tem que ter alguma forma de acoplamento. A grande questão é que alguns acoplamentos são mais seguros ou bons do que outros. Por acoplamento bom  queremos dizer que estamas acoplados com uma classe estável, isto é, que muda muito pouco. 

O melhor acoplamento possível seria com uma inteface, pois ela apenas define um contrato de acesso a alguma classe concreta que a implementa. Ela é apenas uma abstração e, com toda certeza, tende a mudar menos que uma entidade concreta. 

Uma interface coesa é aquela que os comportamentos são bem simples e estão bem definidos. 

Sempre que uma classe A precisar depender de uma classe B, a classe B deve ser mais estável que a classe B. Isso nos diz que devemos sempre caminhar em direção a estabilidade de nossas classes criando sempre mais módulo estáveis que depender de módulos mais estáveis ainda.

Se estamos escrevendo em uma classe regras de negócio e precisarmos de uma dependência com  outro módulo, é de extrema preferência que este módulo seja uma abstração. 

O fato de dependermos de uma abstração e naõ de implementações nos dá segurança para operarmos no que realmente importa na classe que está sendo construida. Note que também fica mais fácil de testarmos determinados comportamento já que podemsos fornecer qualquer classe que obedeça as abstrações dependentes, nos permitindo focar só no que realmente queremos observar.

Módulos de alto nível não devem depender de módulos de baixo nível, ambas devem depender de abstrações. Note que aqui estamos falando que cada classe que estamos desenvolvendo por mais próxima do comportamento de alto nível que estamos desenvolvendo não deve depender de classes que realizam uma tarefa mais corriquéira, como persistência de dados, por exemplo. Ambas as classes, se precisarem depender de outra classe, não devem depender diretamente, mas sim a partir de uma abstração. 

Uma abstração não deve depender de uma implementação, mas sim de outra abstração. Além disso, elas devem sempre visão ser simples e estáveis.

Abstrações não devem depender de detalhes, mas sim detalhes devem depender de abstrações. O fato de estarmos abstraindo uma situação e definindo os padrões que queremos definir, não nos preocupamos com detalhes que seram observados na implementação. Pensamos em definir o padrão de comportamento, ou até o padrão de construção de algum componente. Buscamos definir uma generalização em alguns casos, ou até um molde de como algum módulo deve se comportar. 


Notemos que ao disermos que devemos sempre buscar depender de classes cada vez mais estáveis não estamos dizendo que todas as classes devem ser estáveis. O que estamos dizendo é que devemos buscar depender de abstrações que tendem a ser mais estáveis para que tornemos nossos módulos menos instáveis. É sempre bom também depender de módulos que temos certeza que mudam muito pouco, tais como as classes próprias das bibliotecas próprias da linguem.

Acumular dependências em um único módulo pode ser algo ruim também. Em alguns casos podemos agrupar essas dependências em classes menores e depois depender apenas de uma abstração dessa classe de agrupamento. Tornando nossa classe mais estável e coesa e com um baixo acoplamento. 

Quando encontramos classes não coesas devemos segregalas em classes menores, que não acumulam responsabilidades. Essas classes menores devem sempre buscar se acoplar com classes mais estáveis que ela mesma, preferêncialmente acessado essa depência através de uma abstração. 

O princípio do aberto fechado nos diz para construir módulos que está abertos para extensão, mas fechados para modificação. O primeiro contato com esse princípio pode ser estranho. Como diábos vou fazer uma classe abertas para extensão, mas fechada para modificação? Como vou estender um comportamento sem necessariamente modificar esse comportamento? O raciocínio não vai por ai... Quando falamos que uma classe deve estar aberta para exensão e fechada para modifcações, queremos dizer que para alterar um comportamento específico basta extender determinadas dependências de uma classe, estando está dependente de abstrações ou insterfaces de acesso. A partir do momento que cosntruimos uma classe que obdece o princípio do OCP, podemos propagar mudanças de regras ou requisitos de uma forma muita rápida. Tendo uma classe fechada, podemos construir classes concretas que obedecem determinada abstração e fornecer essa classe quando a classe pedir por uma instância concreta de algum módulo que implementa a abstração que ela depende. 
Dessa forma construimos classe cada vez mais estáveis, que mudam muito pouco quando atingem o princípio do aberto fechado. 

Quando deixamos de instânciar as dependências dentro da classe e passamos a receber essas dependências via construtor, sendo as dependências acessadas a partir de uma abstração, podemos receber qualquer classe concreta que atendam a abstração. Assim, se queremos alterar o comportamento de uma classe sem precisar alterar seu código internamente, basta forncecer instâncias diferentes de classes concretas para as determinadas abstrações. 

Ao desenvolvermos nosso projeto orientados a abstrações, desenvolvemos classes cada vez mais estáveis e extensíveis, resolvendo nosso problema de acoplamento. Note que sempre temos que ter em mente que com isso tudo estamos buscando resolver o problema de acoplasmento e de coesão das nossas classes. 
Um sistema com uma boa absatração fica fácil de ser extendido, pois a extensão não se da pela alteração de classes já existentem, mas sim pela implementação de nossas classes concretas para as abstrações já esclarecidas e definidas. 
Em um projeto orientado a objetos, pensar no design de classes é o que vai deixam nosso trabalho mais dispendioso e fácil. 

Uma classe que é aberta para a modificação, mas fechada para modifcações é aquela classe que para que possamos alterar seu comportamento, não irá haver necessidade de alterar sua extrutura interna. 

Uma classe que obedecem o OCP deixa de forma bem explícita quais são suas depências de uma forma que a classe cliente tenha a liberdade de alterar o comportamento desejado apenas lhe oferecendo uma classe concreta diferentes para que possa obter um resultado diferente. 