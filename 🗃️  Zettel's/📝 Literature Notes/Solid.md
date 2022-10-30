**Meta data**
Note-type:: #LiteratureNote 
Note-Status:: #PermanentNotePending  
Tags:: 

# Solid
Solid é um acrônimo de 5 princípios para o bom design de código, assim como uma boa modelagem técnica de nossas classes; 

Foram identificadas por Robert C. (Uncle Bob) por volta dos anos 2000; 

Os princípios SOLID serem para que possamos escrever códigos com uma maior facilidade de manutenção, testabilidade e escalabilidade (com o menor esforço possível). 

Código que não respeitam os princípios solid tem problemas para testes de unidade, repetição de código / duplicação de funcionalidades e fragilidade de código, onde algum erro em uma parte degrada o todo, por mais que não dependa exclusivamente da parte; 

O princípio de responsabilidade única nos diz que uma classe deve ter apenas 1 motivo para ser modificada, ou para existir no sistema. Se uma classe acumula responsabilidades, ela se torna passível de comprometimento, por conta do acumulo de funcionalidades, que em muitos casos, nem dizem respeito a idealidazação da classe . 
Este princípio também pode ser aplicada a métodos, arquivos e etc; 
Programar orientado a separar responsabilidades em entidades distintas torna nosso código mais coeso e desacoplado, de uma maneira que fique mais legível e bem implementado.

O princípio do aberto fechado nos diz que nossas classes devem ser abertas para a extensão e fechadas para a modificação. Isso não quer dizer que não poderemos mais modifcar nossas classes depois que elas já estejam pronto, o princípio nos traz na verdade uma mentalidade de programar orientado a desacoplar as classes de uma forma que a manutenção devido a mudanças de requisitos ou escalabilidade do software seja feita de uma forma não tão penosa comparada a com código engesado onde para uma mudança ser propagada, várias partes do código precisem ser alteradas. Com a aplicação deste princípio podemos pensar em projetar classes que são independentes em relação ao que fazem. 
O core do princípio é a mentalidade de programar orientado a um pensamento de facilidade de uma futura escalabilidade
# References
1. 