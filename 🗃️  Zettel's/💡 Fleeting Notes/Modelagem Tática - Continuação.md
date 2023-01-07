**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 05-01-2023
Created-time:: 15:37
Liteturature-Note:: [[🗃️  Zettel's/Literature Notes/Modelagem Tática - Continuação]]
Tags:: 

# Modelagem Tática - Continuação
## Entidades
+ Entidade tem identidade
+ É enriquecida por composição com objetos de valor
+ Deve ser exclusiva para o objeto mapeado
+ Possui estados e comportamentos
+ Possui lógica de negócios, mas não faz persistência
## Agregações
+ Conjunto de entidades usadas e referências juntas
+ Conjunto de entidades tratadas como uma quando o dada é alterado
+ Possui uma raiz de agragação
	+ Aggregate Root
		+ Ela mantém a integridade das classes filhas
	+ Entidade isolada
		+ Própria raiz de agregação
+ **Comportamento**
	+  Métodos que validam o estado do objeto
	+ Métodos que invocam regras de negócio e alteram o estado do objeto
	+ Métodos que expressam processos do negócio envolvendo o objeto
+ **Fatores de uma agregação**
	+ Limitar o acesso aos objetos filhos
	+ Certificar-se de que os objetos filhos tem estado está sempre consistênte
	+ Os limites reais de uma agregação é determinada pela regra negócio
- **Responsabilidades**
	- Certificar sempre a consistência do estado dos objetos filhos
	- Cuidar da integridade os objetos filhos
	- Intermedia a adição / edição / exclusão dos objetos filhos
	- Acesso aos objetos filhos devem ser sempre por ações
> Devemos utilizar um único repositório por agregação

## Serviços de Domínio
+ Implementam lógica de negócios que não pertencem a um agregado em particular e trabalham com múltiplas entidades
+ Coordenam a atividade dos agregados e repositórios com o propósito de implementar a ação de negócio
+ Podem consumir serviços da infra, como enviar um e-mail, eventos ou mensagens
+ Ações realizadas pelos serviços de domínio estão previstas nos requisitos e são permitidas e aprovadas pelos domains experts
+ Nomes utilizados nos serviços de domínio são estritamente parte da linguagem ubíqua
+ Expressa uma necessidade do negócio
+ ![[📂 Files/Image/Pasted image 20230105160246.png]]
+ ![[📂 Files/Image/Pasted image 20230105160440.png]]
## Repositorios
+ É apenas uma classe que persiste as entidades e agregações
+ Tipo de classe mais popular do serviço de domínio
	+ Cuida de persistir os agregados
	+ Apenas um repositório por agregação
+ Possuem dependência direta com o meio de acesso a dados 
+ Ele pode ser genérico
+ Pode ser especializado
+ Pode utilizar um ORM ou conectar diretamente no banco e trabalhar com ADO
+ Pode consultar serviços externos
+ Deve retornar dados, fazer isto bem feito e somente fazê-lo
## Eventos de domínio
+ Podem oferecer uma resiliência efetiva para expressar comportamentos do mundo real
+ Disparar num evento para concluir determinada tarefa baseada em ações quie vão além da responsabilidade do domínio
+ ![[📂 Files/Image/Pasted image 20230105163002.png]]
+ Disparar um evento de domínio para ações relevantes
	+ Não é necessário ter todo o código em um único lugar
	+ Disparar o evento sem necessidade de conhecer o que ele faz
	+ Manipular o mesmo evento em diversos lugares

## References
1. 