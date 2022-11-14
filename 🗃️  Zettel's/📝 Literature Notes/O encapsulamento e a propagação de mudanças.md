**Meta data**
Note-type:: #Zettel/NoteType/Literature 
Note-Status:: #Zettel/Status/Pending
Created-date:: 14-11-2022 
Created-time:: 11:42
Permanent-Note::
Tags::

# O encapsulamento e a propagação de mudanças

A idea de encapsulamento nos diz que devemos escondar dentro de classes detalhes de implementação de comportamentos e estruras. Com esses ocultos em entidades podemos ter mais facilidade para propagar mudanças no sistema, visto que, a exposição desses são realizadas através de métodos públicos para as classes clientes. Diferente de sistemas legados, onde precisáriamos alterar vários pontos do sistema para realizar um altereção de regra de negócio, por exemplo. 

Devemos observam casos em que uma classe tem muita intimidad com outra classe, isto é, quando ela apenas consome comportamento atrás de comportamento (ou a estrutura de dados) de maneira simplista. Isso sugere que temos um problema de encapsulamente, pois muito provavelmente essa lógica poderia ser encapsulada na classe manipulada. 

Podemos pensar em um sistema orientado a objetos como um grande quebra-cabeça. Cada peça representa um componentes do sistema e a sua forma é como ela é exposta ou encaixada nas outras peças. Juntamos as peças para construir algo maior. 
Em peças em que sua forma não está bem projetam, para realizar mudanças, precisariamos propagar as mudanças em formas de peças adjacentes para manter a conformidade de dependência, o que gera um grande trabalho. Já em peças com formato de encaixa bem projetado, basta que modifiquemos sua imagem interior que qe possamos propagar essa mudança. 
Programar orientado a objetos é mais sobre pensar em como as peças se umas as outras e no todo, do que nos detalhes da imagem (implementação) de cada uma. 

Um princípio que pode nos ajudar a identificar problemas de encapsulamento é o "Tell, don't ask". Se para tomarmos alguma decisão precisar perguntar alguma coisa a um objeto de uma classe, é quase certeza que temos um problema de encapsulamento. Devemos falar ao objeto o que ele deve fazer e, não perguntar algo para depois tomar uma decisão. A abordagem incorreta torna nosso código muito semelhante a um programação procedural, com problemas de legibilidade e vários "ifs" espalhados.

Devemos também ter cuidado em relação a como vamos expor comportamento encapsulados. A assinatura do método deve estar de acordo, com seu nome expressando a semântica correta, lista de parâmetros claros e retorno bem definido e protegido.
Um método público deve dizer as classes clientes o que ele faz, mas não como faz. Os detalhes estão escondidos (encapsulados) na classe do objeto.
Programando uma classe, devemos nos preocupar com como a classe cliente vai interagir com os comportamento e estrutras públicas da nossa classe para que não ocorra nenhuma inconsistência ou dúvidas em relação o que nossas funcionaldiades proveem. 

Precisamos ter em mente que o grande benefício do encapsulamento é o grande ganho de produtividade para questões relacionadas a propagação de mudanças e o ganho de legibilidade.
# References
1. 