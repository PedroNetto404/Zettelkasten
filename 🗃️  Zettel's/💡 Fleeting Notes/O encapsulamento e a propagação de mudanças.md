**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Tags:: 
Created-date:: 13-11-2022 
Created-time:: 13:24
Literature-note::[[🗃️  Zettel's/📝 Literature Notes/O encapsulamento e a propagação de mudanças]], [[🗃️  Zettel's/📝 Literature Notes/Herança, composição e LSP]]

# O encapsulamento e a propagação de mudanças
+ Encapsulamento é o nome que damos a ideia de escondermos os detalhes de implementação de uma classe, ou seja, como o método faz o trabalho dele. 
+ A partir do momento que realizamos o encapsulamento de algum comportamento em uma classe e o expomos por meio de um método público, podemos se quisermos excluir toda a lógica presente e escrever outra sem que as classes clientes percebam.
+ Se um código não está bem encapsulado, isso implica que em temos a regra de negócio espalhada por lugares diferentes. Logo, quando ocorrer uma mudança na regra de negócio e precisarmos propagar essas mudanças, iríamos precisar realizar várias alterações em diversas partes do código. 
## Sistemas Legados
+ Códigos macarrônicos, algoritmos complexos e pouco performáticos, muitos bugs...
+ Para realizar alguma mudança não sabemos exatamente onde mexer ou o que mudar. 
## 5.2 Intimidade inapropriada
+ Quando uma classe sabe muito sobre detalhes de outra classe chamamos essa situação de intitmidade inapropriada. 
+ Quando entendemos mais do que deveríamos sobre outra classe
+ Caso encontremos uma situação assism, devemos encapsular o comportamento na classe apropriada e apenas consumi-lo.
## 5.3 Um sistema OO é um quebra-cabeças
+ Pensemos em sistema como um grande quebra-cabeças
	+ Cada peça é uma classe e elas se encaixam umas as outras para construir uma coisa maior
+ Projetar nossas classes é pensar justamente nos encaixes. Eles devem ser bem pensados, afinal, mudá-los não é fácil.
+ Se mudarmos o formato de uma peça, preciosariamos propagar essa mudança para muitas peças ao redor.
	+ Agora se uma peça estiver com o desenho interno riscado, basta cuidar deste detalhe apenas e as outras peças nem ficaram sabendo dessas mudanças explicitamente.
![[📂 Files/Image/Pasted image 20221113134955.png]]
+ Imaginemos que do formarto da peça é a interface que essa classe prôve às outras classes; o desenho é a implementação. Se a interface estiver clara, coesa e bem definida, podemos trocar a implementação daquela classe sem afetar o resto do sistema. 
![[📂 Files/Image/Pasted image 20221113135215.png]]

+ Em um sistema classes mal implementada são um problema menor comparado a um sistema mal modelado.
+ Devemos sempre pensar no formato das nossas peças. É isso que é programar orientado a objetos: é pensar no formato das peças, pensar até mais dod que no próprio desenho
## Tell, Don't Ask (Diga, não pergunte)
+ Não devemos perguntar a um objeto sobre alguma característica dele (if (condicao) você tem essa condição?) e, de acordo com a resposta, damos uma ordem para esse objeto.
+ Quando temos um códigos que perguntam uma coisa para um objeto, para então tomar uma decisão, é um código que não está seguindo o "Tell, Don't Ask". 
+ A ideia é que devemos sempre dizer ao objeto o que ele tem que fazer,  e não primeiro perguntar algo a ele, para depois decidir. 
### Antes:
```java
NotaFiscal nf = new NotaFiscal(); 
double valor; 
if(nf.getValorSemImposto() > 10000){
	valor = 0.6 * nf.getValor(); 
} else {
	valor = 0.12 * nf.getValor();
}


### Depois
```java
NotaFiscal nf = new NotaFiscal(); 
double valor = nf.calculaValorImposto();
```
+ Códigos que perguntam para depois tomar uma decisão são códigos procedurais. 
+ Em linguagens que trabalhamos com objetos, devemos o tempo todo dar ordens aos objetos. 
+ A partir do momento que perguntamos algo explicitamente para depois tomar uma decisão, provavelmente estamos furando o encapsulamento
## 5.5 Procurando por encapsulamentos problemáticos
+ Ao encapsularmos um comportamento e formos o utilizar a partir da exposão por meio de um método públicos devemos ter a capacidade de enteder o que ele método oferece pela semântica da nomeclatura do método. 
+ Uma classe cliente não deve saber como é exatamente a implementação de um metódo. Apenas saber sua assinatura já é o suficiente.
+ ![[📂 Files/Image/Pasted image 20221113140855.png]]
+ Uma linha de raciocínio bastante interessante na hora de se programar orientado a objjetos é não pensar só na implementação daquela classe, mas também nas classes clientes, que a consumirão. 
+ Sistemas difíceis de manter são aqueles que não pensam na propagação de mudanças.
	+ Para realizar alguma mudança precisamos alterar 10 pontos diferentes. 
	+ Códigos bem enpsulados resolver esse problema
![[📂 Files/Image/Pasted image 20221113141217.png]]

## 5.6 A famosa Lei de Demeter
+ Problema de invocações em cadeia; 
+ Devemos diminuir os pontos de mudança. 
+  A ideia é evitar envocaçõs em cadeia e usar melhor o encapsulamento
![[📂 Files/Image/Pasted image 20221113162835.png]]
+ A partir do momento que encapsulamos um comportamento fica mais fácil de o alterar caso seja necessário.
+ As classes clientes precisar saber o que determinada classe faz, mas não como é feito exatamente
+ Encapsulamento é esconder como a classe realiza suas tarefas.
+ Para verificar se minhas classes e métodos estão bem encapsulados devemos realizar duas perguntar para a classe / método: "O que? E como?"
+ O "o quê?" devemos saber como responder, já que o nome do método expressa de forma clara e objetiva o que ele realiza. Já "como?" não poderemos saber response. Se conseguirmos é porque não temos um bom encapsulamento.
## 5.9 Modelos Anêmicos
+ Devemos evitar modelos anêmicos. 
+ Orientação a objetos é modelar o mundo real por meio de classes que contêm uma estrutura de dados e comportamentos.
## 5.10 Conclusão
+ Encapsulamento, o terceiro pilar da orientação a objetos.
+ Escondemos os detalhes de implementação, e assim diminuimos os pontos de mudança. Isso torna nosso sistema mais fácil de ser mantido.
![[📂 Files/Image/Pasted image 20221113164656.png]]

# Herança x Composição e o tal do LSP

+ Joshua Bloch: "Crie suas classes pensando em herança, ou então proíba-a"
+ As classes filhas precisam respeitar os contratos definidos pelas classes pai. Mudar esses contratos pode ser algo perigoso.
+ Para usarmos herança de maneira adequada , precisar pensar o tempo todo nnas pré e pós-condições que a classe pai definiu. 
+ Pré-condições
	+ Dados que chegam nas classes ou métodos
	+ Quais são as restrições iniciais para que determinado método funcione corretamente? 
+ Pós-condições
	+ Outro lado da moeda
	+ O que o comportamento devolve

A classe filha pode melhorar as pré-condições da classe pai, mas não as pós-condições, podemos apenas restringi-las de forma que o código presente na classe pai continue funcionando corretamento.
+ ![[📂 Files/Image/Pasted image 20221113170821.png]]
## 6.4 Acoplamento entre a classe pai e a classe filha
> Sempre que uma classe depende de outra para existir, é acoplamento. E dependendo da forma como essa acoplamento é feito, podemos ter problemas no futuro

+ Devemos modelar hierarquias de herança quando as classes filhas irão precisar saber pouco dos detalhes da classe pai (ou não conhecer nada)
+ Devemos tentar ao máximo reduzir o acoplamento entre a classe pai e filhos
+ Podemos aplicar o conceito de enpasulamento nesses casos também. Se a classe filha conhece muitos detalhes de implementação da classe pai, essa não está bem encapsulada.

+ Em composições, a relação da classe principal com a classe dependida não é tã́o intima quanto a relação existente entre clases pai e filho, portanto, quebrar o encapsulamento é mais difícil; 
	+ Composição nos trás mais flexibilidade;
	+ Facilidade para testes automatizados

+ Podemos utilizar herança para facilitar a vida das classes filhas isolando funcionalidades. 
+ As vezes fazemos uso de uma "má herança" para termos outros ganhos.

## 6.7 Quando usar herança então? 
+ Devemos usar herança quando realmente existe a relação X é um Y
+ Gerente é um funcionário, ou ICMS é um imposto. Não devemos utilizar herança caso a relação seja de composição, ou seja, x tem um y, ou x faz uso de Y. 
+ A classe filha deve descolher detalhes de implementação da classe pai e não devem violar as restrições de pré e pós-condições na hora de sobreescrever um determinado comportamento;
+ Usamos herança para reaproveitar um código que realmente faz sentido, e composiçã́o para trechos de código que precisam de mais flexibildade. 
+ Para utilizar herança devemos entender bem acoplamento, coesão e restrições entre classes pai e filhos. 
## 6.8 Pacotes:
## References. 

1. Capítulo 5 - POO e SOLID para Ninjas