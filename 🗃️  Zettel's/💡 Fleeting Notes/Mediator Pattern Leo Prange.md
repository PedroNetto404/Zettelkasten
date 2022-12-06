**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 02-12-2022
Created-time:: 13:04
Liteturature-Note:: 
Tags:: 

# Mediator Pattern Leo Prange
+ Melhorar casos de uso e desacoplamento de componentes
	+ Facilidade de manutenção
	+ Escalabildiade
+ Domínio monolítico
	+ Objeto que conhece todos os outros objetos acaba se tornando refém de outros objetos. 
+ Modelagem com comportamento distribuidos
	+ Dependente de outros objetos
	+ Acabamos cirando formas mais complexas de realizar customização

## Sobre o Mediator
+ Pattern comportamental 
+ Intuito 
	+ Definir um objeto que encapsula a forma com um conjunto de objetos interage. 
	+ Promove o acoplamento fraco
		+ Evita que os objetos se refiram uns aos outros explicitamente
		+ Permite que possamos variar as interações independentemente na classe que encapsula os objetos. 
+ Devemos usar o Mediator, quando: 
	+ Objetos se comunicam de forma específica e complexa
	+ Quando temsos comportamentos distribuidos 
		+ Esse comportamento deveria ser customizável
### Implementação - Command
+ Especificação dos parâmetros necessários para realizar a operação
+ Define a ação
+ Pode ter 1 ou mais resolvedores (Handlers)
+ No caso da lib MediatR, um comando precisa implementa a classe IRequest
	+ O tipo IRequest pode ou não receber um generics, que será o tipo de retorno de nosso comando
### Implementação - CommandHandler
+ São resolvedores dos nossos comandos 
+ Assina um contrato onde é informado qual comando é resolvido  e o retorno da solução do comando; 
+ Conecta nossos objetos realizando a substituição
	+ Podemos criar métodos auxiliares para deixar nosso Handle mais limpo 

### Conclusão
+ Ótimo solução para manter nosso domínio seguro e flexível a mudanças; 
+ Remoção de uma classe precisar do comportamento de terceiros
	+ Benefícios
		+ Melhor construção de solução
		+ Evita acoplamento desnecessário. 
## References
1. 