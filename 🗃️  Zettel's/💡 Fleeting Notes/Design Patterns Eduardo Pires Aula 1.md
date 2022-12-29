 O que é? 
+ Padrões de código para solução de problemas conhecidos
+ Solução com bom design de código
+ 23 padrões fundamentais
![[📂 Files/Image/Pasted image 20221229095959.png]]
## Famílias
### Criacionais
+ Fornecem meios de criação de um objeto
#### Abstract Factory
+ Permite produzirmos famílias de objetos relacionados sem ter que especificar suas classes concretas
![Padrão Abstract Factory](https://refactoring.guru/images/patterns/content/abstract-factory/abstract-factory-pt-br.png)
##### Problema
![[📂 Files/Image/Pasted image 20221229112330.png]]
![[📂 Files/Image/Pasted image 20221229112342.png]]
+ Não queremos mudar o código existente caso surja novos produtos ou famílias

+ A classe cliente deve funcionar com as interfaces e produtos abstatos, não se preocupando com especificidades de tipos especializados; 
	+ Assim podemos mudar o tipo de uma fábrica que passou para o código cliente (ele recebe uma fábrica abstrata, isto é, pode receber qualquer fábrica que implemente a fábrica abstrata), bem como a variante do produto que o código cliente recebeu, sem quebrar o código cliente atual

![[📂 Files/Image/Pasted image 20221229114119.png]]

+ Não só o cliente n se importa com o tipo de fábrica consumida como não se importa com o estilo recebido. Ele só tem a certeza que os tipos de objetos combinam com os tipos pedidos
![[📂 Files/Image/Pasted image 20221229115138.png]]
+ Cria um![[📂 Files/Image/yo62de0b.bmp]]
+ Ex: Quando a aplicação inicia, ela escolhe qual a fábrica é adequada para o sistema operacional específico e oferece essa instância concreta a classe cliente, sendo ela fechada. Alteramos o comportamento do cliente apenas oferecendo uma instância de fábrica diferente. 
![[📂 Files/Image/Pasted image 20221229115921.png]]
 

+ a instância de diversas famílias de classes
+ Fábrica de fábricas
+ Criar diversos tipos de famílias dos produtos
+ Delega a criação a uma fábrica concreta
+ ![[📂 Files/Image/abstract.png]]
![[📂 Files/Image/Pasted image 20221229120023.png]]
![[📂 Files/Image/Pasted image 20221229120308.png]]

#### Factory Method
+ Cria uma instância de diversas derivações de classes
![[📂 Files/Image/Pasted image 20221229121714.png]]
#### Singleton
+ Cria uma única instância que é utlizada por todos os recursos.
+ Recurso que pode ser compartilhado por várias 
	+ Classes que não mantém estado
### Estruturais
+ Composição de objetos por heranças e interfaces para diferentes funcionalidades
#### Adapter
+ Compatiliza objetos de interfaces diferentes
##### Propósito 
+ Permite que objetos com interfaces incompatíveis colaborem entre si
![Padrão de projeto Adapter](https://refactoring.guru/images/patterns/content/adapter/adapter-pt-br.png)
##### O Problema 
![[📂 Files/Image/5hglfm6e.bmp]]
+ Objeto adaptador
	+ Converte a interface de um objeto para que outro objeto possa entedê-lo
	+ Encobre um dos objetos para esconder a complexidade da conversão acontecendo nos bastidores
	+ Objeto encobrido não fica nem ciente do adaptador
##### Funcionamento
1. O adaptador obtém uma interface, compatível com um dos objetos existentes
2. Usando essa interface, o objeto existente pode chamar os métodos do adaptador com segurança
3. Ao receber a chamada, o adaptador passa o pedido para o segundo objeto, mas em um formato e ordem que o segundo objeto espera
+ Em alguns casos podemos criar
+ ![Solução do Adapter](https://refactoring.guru/images/patterns/diagrams/adapter/solution-pt-br.png)
![[📂 Files/Image/7okgrk3d.bmp]]
![[📂 Files/Image/0clny0g4.bmp]]
1. Cliente
	+ Classe que contém a lógica de negócio do programa existente
2. Interface do Cliente
	+ Descreve protocolo que outras classes devem seguir para ser capaz de colaborar com o código cliente
3. Serviço 
	+ Alguma classe útil (geralmente de terceiros ou código legado); 
	+ O cliente não pode usar essa classe diretamente porque ela tem uma interface incompatível.
4. Adaptador
	+ Classe capaz de trabalhar tanto com o cliente quanto com o serviço 
		+ Implementa a interface enquanto encobre o objeto do serviço 
		+ Recebe chamadas do cliente através da interface do adaptador 
			+ Traduz em chamadas para o objeto encobrido do serviço em um formato que ele possa entender. 
	+ 

#### Facade
+ Uma única classe que representa uma subsistema

#### Composite
+ Compartilha um objeto em estruturas de árvores que representam hierarquias
### Comportamentais
+ Interação e comunicação entre os objetos além da divisão de responsabilidades

