**Meta data**
Note-type:: #Zettel/NoteType/Fleeting 
Note-Status:: #Zettel/Status/Pending 
Tags:: 

# SOLID - Eduardo Pires
![[📂 Files/Image/Pasted image 20221025191116.png]]

+ Todo bom programador deve conhecer e aplicar o solid durante o desenvolvimento; 
+ Sólid é um acrônimo dos cinco primeiros princípios da programação orientada a objetos e disg de código identificados por RObert C. Martin por volta do ano 2000; 
+ Princípios que temos que ter em mente quando formos desenvolver orientado a objetos; 
## Os princípios SOLID devem ser aplicados para se obter os benefícios da orienteção a objetos, tais como: 
+ Ser fácio de se manter, adaptar e se ajustar às alterações de escopo; 
+ Seja testável e de fácil entendimento; 
+ Seja extensível para alterações com o menor esforço possível; 
+ Que forneça o máximo de reaproveitamento; 
+ Que permanesça o máximo de tempo possível em utilização; 

Código sensível ----> qualquer modificação quebra o código
## Utilizano os princípios SOLID é possível evitar problemas muito comuns
+ Dificuldade na testabilidade / criação de testes de unidade; 
+ Código macarrônico, sem estrutura ou padrões; 
+ Dificuldade de isolar funcionalidades; 
+ Duplicação de código, uma alteração precisa ser feita em N pontos; 
+ Fragilidade, o código quebra facilmente em vários pontos após alguma mudança.
	+ Alto acoplamento
## SRP - Single Responsability Principle
+ Princípio mais importante do SOLID; 
+ Sem ele o restante não faz muito sentido; 
+ Uma classe deve ter um, e apenas um, **motivo** para ser modificada; 
+ Pode ser aplicada a outros atores;
	+ Deveriamos aplicar este princípio a tudo
+ Uma classe não deve se adicionar ao banco
### Exemplo prático
#### Erros
+ Um cliente não precisa saber como validar seu email ou cpf
+ ![[📂 Files/Image/Pasted image 20221025194615.png]]
+ Ou se conectar com o banco de dados
+ ![[📂 Files/Image/Pasted image 20221025194658.png]]
+ Ou enviar email's
![[📂 Files/Image/Pasted image 20221025194714.png]]
A classe cliente deveria, por exemplo, saber como persistir seu estado
#### Classe correta sendo o SRP
![[📂 Files/Image/Pasted image 20221025195103.png]]
Uma classe precisa saber dizer se está valida ou não. Por exemplo, não podemos salvar um dado inconsistente no banco
+ Para salvar dados no banco temos uma design pattern 
+ ![[📂 Files/Image/Pasted image 20221025195353.png]]
+ Note que poderiamos melhorar o código porque a classe repositório não precisa necessariamente conhecer a conexão com o banco
+ ![[📂 Files/Image/Pasted image 20221025195531.png]]
+ Classe de serviço que adiciona o cliente
+ Note que a classe ClienteService não sabe como salvar no banco ou como se envia um email. Ela apenas consume classes que sabem fazer isso, ou melhor, ela depende de classes que fazem isso
+ Uma classe deve ter apenas 1 razão para ser modificada
## OCP - Open Closed Principle
+ Entidades de software (classes, módulos, funções, etc) devem estar abertas para extensão. mas fechadas para modificação; 
+ Porgramação voltada a aplicação desse princípio; 
![[📂 Files/Image/Recording 20221025201141.webm]]

![[📂 Files/Image/Recording 20221025201250.webm]]
Programar orientado a classes abertas para extensão mas fechadas para modificação nos da a maior tranquilidade que nosso trabalho não quebre durante sua execução
## Liskov Substitution Principle
![[📂 Files/Image/Pasted image 20221025202545.png]]
+ Uma classe base deve poder ser substituida pela sua classe derivada; 
+ O OCP permite que criemos o LSP
	+ Trabalham em conjunto
![[📂 Files/Image/Pasted image 20221025202829.png]]
+ Uma classe filha deve substituir plenamente a classe base;
## ISP - Interface Segregation Principle
+ Clientes não devem ser forçados a depender de métodos que não usam; 
+ ![[📂 Files/Image/Pasted image 20221025205519.png]]
+ 
![[📂 Files/Image/Recording 20221025205953.webm]]

![[📂 Files/Image/Recording 20221025210049.webm]]
## DIP - Dependency Inversion Principle

![[📂 Files/Image/Recording 20221025210227.webm]]
![[📂 Files/Image/Pasted image 20221025210427.png]]
![[📂 Files/Image/Pasted image 20221025210441.png]]

![[📂 Files/Image/Recording 20221025210602.webm]]

![[📂 Files/Image/Recording 20221025210649.webm]]

![[📂 Files/Image/Recording 20221025210944.webm]]

![[📂 Files/Image/Recording 20221025211952.webm]]

![[📂 Files/Image/Recording 20221025212709.webm]]

## References
1. 