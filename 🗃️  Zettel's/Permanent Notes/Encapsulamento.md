**Meta data**
Previous-note:: [[🗃️  Zettel's/Permanent Notes/Abstração para OO]]
Next-note:: [[Herança]]
Note-type:: #Zettel/NoteType/Permanent
Note-Status:: #Zettel/Status/Pending  
Created-date:: 15-11-2022
Created-time:: 19:40
Tags::

# Conceito: Encapsulamento
O encapsulamento é um dos pilares de orientação a objetos mais importantes. A ideia aqui é esconder detalhes de implementação tanto de métodos quanto de propriedades de nossas classes. 
Classes cliente precisam apenas saber o que uma classe e o que ela sabe fazer. Porém, como a classe realiza essas funcionalidades, não deve ser exposto, mas sim oculto. 
A partir do momento que usamos o encapsulamento temos um código muito mais coeso e fácil de dar manutenção e extender. Quando precisamos propagar uma mudança não precisamos realizar alterações em várias partes do projeto, apenas na classe que contém o comportamento que precisar ser mudado. Automaticamente (desde que não alteremos a assinatura), a mudança será propagada para as classes clientes.
Criamos uma caixa preta, onde sabemos apenas o que nos é interessante. O que não precisamos saber é escondido.