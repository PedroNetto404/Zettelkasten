**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 06-12-2022
Created-time:: 10:30
Liteturature-Note:: 
Tags:: 

# Cap8 Princípios, padrões e práticas ágeis em CSharp

## Princípio da responsabilidade única (SRP)
+ Afinidade funcional dos componentes de um módulo
+ Forças que fazem um módulo mudar
	+ Uma classe deve ter apenas um motivo para mudar. 
	+ Cada responsabilidade é um eixo de mudança
		+ Requisitos mudam
			+ Alterações iram ocorrer por meio de mudanças nas responsabilidades. 
				+ Se uma classe acumula mais de uma responsabilidade ela mudará por motivos diferentes
	+ Responsabilidades acopladas
		+ Mudanças em uma responsabilidade a parte pode afetar o funcionamento de outra
			+ Fragilidade de componentes
	+ ![[📂 Files/Image/Pasted image 20221206103949.png]]
	+ ![[📂 Files/Image/Pasted image 20221206104200.png]]
### Definindo uma responsabilidade
+ Motivo para mudar
+ Mais de um motivo para mudar implica em uma classe com mais de uma responsabilidade
+ Devemos pensar no acoplamento dos módulos clientem com nossas classes e suas responsabilidades. Se o cliente precise de 2 métodos não há porque lhe oferecer 4 outros que não são necessários, obrigando a recompilar a classe toda vez que mudar. 
+ ![[📂 Files/Image/Pasted image 20221206104853.png]]
+ ![[📂 Files/Image/Pasted image 20221206104907.png]]
+ Notemos que a separação de responsabilidades se deu por quebrar o acesso a duas interfaces que a clase Modem implementa. As classes clientes se acoplam as interfaces que são necessárias apenas.
+ Se as duas responsabilidades mudarem juntas não deveriamos separa-las. 
	+ Complexidade desnecessária.
+ Não é necessário aplicar um princípio se não hovuer  nenhum sintoma. 
	+ Um eixo de mudança só será um eixo de mudança se as mudanças ocorrerem. 
### Separando as responsabildiades acopladas
### Persistência
+ Vincular a persintência de dados ao aplicativo é um erro grave
	+ O motivo de mudança de de um subsistema de  persistência é totalmente diferente de uma motivo de mudança de uma regra de negócio
![[📂 Files/Image/Pasted image 20221206105738.png]]
# Princípio do aberto / fechado (OCP)
+ Todos os sistemas mudam durante seu ciclo de vida
	+ Devemos desenvolver sistemas estáveis em face a mudança
+ ![[📂 Files/Image/Pasted image 20221206110533.png]]
+ Mudança em um programa resulta em uma sucessão de mudanças em módulos dependentes
	+ Problemas de encapsulamento e rigidez do sistema.
	+ Mudanças são aplicadas por meio de adição de novo código e não pela alteração de código que já funciona
## Descrição do OCP
+ POO
	+ Abstração e polimorfismo
		+ CSharp
			+ Herança
### Características de módulos que obedecem ao OCP
1. Estão abertos para ampliação
	1. Comportamento do módulo por ser amplicado
	2. Requisitos surgem
		1. Ampliamos os comportamentos do módulo para atender a esses requisitos
2. Fechados para a modificação
	1. Amplicar o comportamento de um módulo não resulta em modificar os comportamento já existentes, isto é, a DLL ou EXE compilados ficam intactos
### Como alterar o comportamento de um módulo sem o modificá-lo
#### Abstração
+ Linguagens orientadas a objetos
	+ Possibilidade de criar abstrações fixas e ainda assim representar um conjunto ilimitado de comportamentos.
+ Classes base abstratas
+ Grupo ilimitado de comportamentos possíveis
	+ Representado por todas as classes derivadas possíveis
+ Um módulo pode manipular uma abstração
	+ Fica fechado para modificações pois manipula uma abstração estável que tender a mudar pouco
	+ Aberto para a ampliação pelo fato de o comportamento ser modificado pela criação de novas clases derivadas que implementam essa abstração
#### Exemplo 
![[📂 Files/Image/Pasted image 20221206113153.png]]
+ A classe Cliente utilizar a classe Server
	+ Se quisermos que a classe cliente utilize outro servidor, precisariamos alterar a classe cliente
![[📂 Files/Image/Pasted image 20221206113252.png]]
O comportamento consumido pela classe cliente agora é obtido a partir de uma interface. Para alterar o comportamento, basta que implementemos outro servidor que atenda a essa interface. 

> Classes abstratas estão mais intimamente ligadas as classes que a consomem do que as classes que a implementam

**Template Method**
![[📂 Files/Image/Pasted image 20221206113834.png]]
+ Com o OCP definimos a execução de uma responsabilidade em cima de abstrações bem construidas. 
	+ Temos um componente fechado e aberto
![[📂 Files/Image/Pasted image 20221206151845.png]]
Para Estender o sistema não precisar necessariamente alterar o código já existente, mas sim implementar componentes derivados de abstrações já existentes.

#### Antecipação e estrutura "natural" 
+ Indepenten de quanto um módulo seja fechado, sempre haverá algum tipo de mudança com relação à qual ele não será fechado. 
+ Não existe um modelo natural para todos os contextos; 
+ Como um fechamento não é completo, ele deve ser estratégico
+ Devemos imaginar quais os tipos de mudança mais prováveis 
	+ Construir abstrações para nos previnirmos contras essas mudanças.
+ Poderiamos tomar uma abordagem experimentação
	+ Escrever a abstração como se ele não fosse mudar
		+ Esperar a mudança chegar e nos reajustar contra as próximas mudanças do mesmo tipo. 
#### Usandando abstrações para obter fechamento explícito
+ O fechamento de um componente é baseado na abstração
+ Em CSharp, temos uma abstração de ordem já definida. 
	+ IComparable
		+ Interface com só um método CompareTo
	+ Temos ainda a abstração IComparer
		+ Representa uma abstração de um componente comparador, que sabe como ordenar objetos 
		+ Temos que escrever o método Compare, que recebe dois objetos e retornas a precedencia 
```c#
/// <summary>  
/// Este comparador pesquisará o tipo de uma figura  
/// na tabela de hashing de prioridades. A tabela de  
/// prioridades define a ordem das figuras. As figuras  
/// que não são encontradas precedem as que são.  
/// </summary>  
public class ShapeComparer: IComparer  
{  
private static Hashtable priorities = new Hashtable();  
static ShapeComparer()  
{  
priorities.Add(typeof(Circle), 1);  
priorities.Add(typeof(Square), 2);  
}  
private int PriorityFor(Type type)  
{  
if(priorities.Contains(type))  
return (int)priorities[type];  
else
return 0;  
}  
public int Compare(object o1, object o2)  
{  
int priority1 = PriorityFor(o1.GetType());  
int priority2 = PriorityFor(o2.GetType());  
return priority1.CompareTo(priority2);  
}  
}  
public void DrawAllShapes(ArrayList shapes)  
{  
shapes.Sort(new ShapeComparer());  
foreach(Shape shape in shapes)  
shape.Draw();  
}
```
#### Conclusão
+ OCP está no centro da Orientação a Objetos
+ Responsável por nos oferecer os recursos da orientação a objetos
	+ Flexibilidade
	+ Capacidade de reutilização
	+ Facilidade de manutenção
### O princípio da substituição de liskov (LSP)
#### Questões que devemos levar em consideração ao realizar herança: 
+ Regras de projeto que governam uso específico de herança? 
+ Quais as características das melhores hierarquias de herança?
+ Quais as armadilhas que nos farão criar hierarquias que não obedecem ao OCP
+ 

> Os subtipos devem ser substituitos pelos tipos base


#### Violação do LSP causando uma violação do OCP
```c#
struct Point {double x, y;}  

public enum ShapeType {square, circle};  

public class Shape  
{  
	private ShapeType type;  
	public Shape(ShapeType t){type = t;}  
	public static void DrawShape(Shape s)  
	{  
		if(s.type == ShapeType.square)  
			(s as Square).Draw();  
		else if(s.type == ShapeType.circle)  
			(s as Circle).Draw();  
	}  
}  

public class Circle: Shape  
{  
	private Point center;  
	private double radius;  
	public Circle(): base(ShapeType.circle) {}  
	public void Draw() {/* desenha o círculo */}  
}  

public class Square: Shape  
{  
	private Point topLeft;  
	private double side;  
	public Square(): base(ShapeType.square) {}  
	public void Draw() {/* desenha o quadrado */}  
}
```
#### A validade não é intrínseca
+ O Princípio da Substituição de Liskov nos leva a uma conclusão muito importante: um modelo visto isoladamente não pode ser validado de forma significativa. A validade de um modelo só pode ser expressa em termos de seus clientes.
+ Em projetos orientados a objetos
	+ "É-um" pertence ao comportamento que pode ser razoavelmente suposto e do que os clientes dependem

#### Projeto por contrato (DBC - Design by Contract)
+ Existem uma técnica para tornar essas suposições razoáveis explícitas e, com isso, forçar o LSP. 
+ O autor de uma classe declara o contrato dessa classe explicitamente
	+ Contrato
		+ Informa ao autor de qualquer código cliente sobre os comportamentos que pode contar
		+ Especificado pela declaração de 
			+ Pré-condições
				+ Devem ser verdadeiras para que o método execute
			+ Pós-condições
				+ Ao ser concluído, o método garante que as pós-condições são verdadeiras. 
## References
1. 