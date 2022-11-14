**Meta data**
Note-type:: #Zettel/NoteType/Literature 
Note-Status:: #Zettel/Status/Pending
Created-date:: 13-11-2022 
Created-time:: 11:36

# SOLID Vídeo Eduardo Pires
SOLID é um acrônimo para cinco princípios evidenciados por Robert Martin (Uncle Bob) por volta dos anos 2000. Para desenvolver projetos em POO que sejam extensíveis e com componentes coesos, de fácil manutenção devemos desenvolver com esses princípios em mente. 
Ao aplicarmos os princípios do SOLID em nossos projetos orientados a objetos consegumos atindir códigos que são fácies de testar, reutilizáveis, fáceis de dar manutenção, fáceis de escalar com pouco esforço e que permanesçam úteis por maior tempo possível. 
Dessa forma conseguimos construir um projeto que seja sólid e que atenda nossas necessidades de negócio de uma forma que não pareça uma torre de cartas que a indisponibildiade de um componente destrua todo o funcionamento do nosso projeto. 

Ao não usarmos o SOLID teremos dificuldade de testar componentes de maneira isolada, não sabendo como ele se comporta sobre deteminado cenário de uma maneira precisa e objetiva. 
Teremos dificuldade de propagar mudanças, visto que teremos que modifar várias partes do código do projeto para que uma mudanças seja levada a todas as classes clientes. 
Teremos um projeto bem frágil e bem vulnerável em a indisponibilidades. 

O primeiro e mais importante princípio do SOLID é a Letra S - Single Responsability. Este princípio nos diz que para termos classes mais coesas preciosamos que cada componente carregue em si apenas um conceito ou responsabilidade do projeto. Ele não deve acumular responsabilidades e caso tenha que ser mudado, será por apenas uma razão. 
Esse princípio não diz respeito apenas para nossas classes, mas sim para todo módulo que estejamos trabalhando, tais como interfaces, métodos, arquivos e etc. 
Para anteder esse princípio devemos em vez de implementar funcionalidades distintas em uma única classe, apenas consumir esses funcionalidades de outras classes que sabem como realizar a ação. Para melhorar, como veremos no princípio da inversão de dependências, poderíamos ainda acessar essas funcionalidade através de um abastração. 

Programa orientado a classes que seguem ao OCP é ter mais segurança em relação ao nosso código quebrar em tempo de execução. 

O princípio da substituição de Liskov nos diz como devemos utilizar heranças da forma correta. 
Se em algum ponto do código estivermos utilizando um tipo base T e não conseguirmos substituir esse tipo T pos S, sendo S subtipo de T, temos um problema de abstração. 

O princípio da segregação de interfaces nos diz que devemos escrever interfaces que sã́o coesas e definem apenas um conjunto preciso de comportamentos. Fazemos isso para que uma classe não seja obrigada a implementar um comportamento que não seja interessante para ela. 
Segregando em interfaces conseguimos ter uma maior acertividade em nossas abstrações e como elas estão definidas. Note que uma interface pode ser herdada por outra interface, além de possui em algumas linguagens recursos de tipos genéricos. 

O princípio da inversão de depências nos diz que nosso acoplamento deve preferencialmente ser por meio de uma abstração, invertendo a dependência para qualquer módulo que sejá compatível com a abstração definida. 
Dessa forma temos um código mais flexível, coeso e com mais facilidade de teste.




# References
1. 