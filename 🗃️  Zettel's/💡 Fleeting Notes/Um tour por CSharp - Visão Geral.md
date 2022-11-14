**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 11-11-2022
Created-time:: 16:24
Liteturature-Note:: [[🗃️  Zettel's/📝 Literature Notes/Um tour por CSharp - Visão Geral]]
Tags:: 

# Um tour por CSharp - Visão Geral
## Sobre a linguagem
+ Linguagem de programação
	+ Moderna
	+ fortemente tipada; 
	+ Orientada a objetos
+ Orientada a objetos e componentes; 
	+ Definimos os tipos e os comportamentos deles
+ Recurso do C#
	+ Garbage Colletor
		+ Recupera automaticamente a memória ocupada por objetos não utilizados inacessíveis; 
	+ Tipos anuláveis
		+ são protegidos contra variáveis que não se referem a objetos alocados
	+ Tratamento de exceções
		+ Abordagem estruturada e extensível para detecção e recuperação de erros; 
	+ Expressões lambda
		+ Dão suporte suporte a técnicas de programação funcional
	+ Consulta integrada a linguagem (LINQ)
		+ Padrão comum para trabalhar com dados de qualquer fonte. 
	+ Operações assíncronas
		+ Fornece sintaxe para criação de sistemas distribuidos
	+ Sistema de tipo unificado
		+ Todos os tipos do CSharp, incluindo tipos primitivos, como int ou double, herdam de um único tipo de object raiz
		+ Todos os tipos compartilham um conjunto de operações comuns
	+ Tipos de referência e tipos de valor definidos pelo usuário
	+ Alocação dinâmica de objetos e o armazenamento em linha de estruturas leves
	+ Suporte a métodos genéricos
	+ Iteradores
		+ Permitem que os implementadores de classes de coleção definam comportamentos personalizados para o código do cliente
	+ A linguagem enfatiza o controle de versão para garantir que programas e bibliotecas possam evoluir ao longo do tempo de maneira compatível
		+ Modificadores virtual e override
		+ Regras de resolução de sobrecarga de método
		+ Suporte para declarações explícitas de membro de interface

## Arquitetura do .NET
+ Programas em CSharp são executados em .NET
+ .NET composto por
	+  um sistema de execução virtual chamdo CLR (Common Language Runtime) 
		+ Implementação da Microsoft da CLI (Common Language Infrasctructure), um padrão internacional.
			+ CLI 
				+ base para criar ambientes de execução e desenvolvimento nos quais as linguagens e bibliotecas funcionam em conjunto perfeitamente
	+  conjunto de bibliotecas de classes
+ Código-fonte compilado para IL (Linguagem intermediário) que está em conformidade com as especificações da CLI
+ O código IL e os recursos (bitmaps, cadeia de caracteres, etc) são armazenados em um assembly (normalmente .dll)
+ Um assembly contém um manifesto que fornece informações sobre tipos, a versão e cultura.
+ Quando um programa CSharp é executado, o assembly é carregado no CLR. Em seguida, o CLR executará a compilação JIT (Just-in-Time) para converter o código IL em instruções de máquina. 
+ CLR também oferece recursos relacionados à coleta automática  de lixo, tratamento de excessões e gerenciament o de recursos. 
+ Código gerenciado
	+ Código executado pela CLR
+ Código não gerenciado
	+ É compilado em linguagens de máquina nativa e visa uma plataforma específica
+ Interoperabilidade de linguagem
	+ Código IL produzido pelo compilador C# está em conformidade com a CTS (Common Type Specification)
	+ O código IL gerado a partir do C# pode interagir com o código que foi gerado a partir das versões do .NET do F#, do Visual Basic, e do C++
	+ Os tipos podem fazer refenrências uns aos outros como se estivessem sido escritos na mesma linguagem.
+ .NET incluí bibliotecas extensas
	+ Dão suporte a cargas de trabalho diferentes. 
	+ Organizadas em namespaces que fornecem várias funcionalidades úteis
+ Para fazer refenrência a um namespace utilizamos a palavra reservada using
+ Namespaces forncem um meio hierárquico de organiazr bibliotecas e programas
	+ Seria uma organização lógica de nossos tipos
	+ Um namespace pode conter tipos e outros namespaces
+ A referencia a um namespace nos permite o uso não qualificado dos tipos que compoem esse namespace

+ Métodos de instância podem fazer referência a uma determinada instância de um objeto delimitador usando a plavra reservada this
+ Métodos estáticos operam sem refência a um objeto específico

+ Por convensão, um método estático denomidado Main, define o ponto de entrada de um programa. 
+ A classe Console, presente no namespace system, por exemplo, faz parte das bibliotecas de classe padrão, que, por padrão, são referenciadas automaticamente pelo compilador. 

## Tipos e variáveis
+ Um tipo define uma estrutura e o comportamento de qualquer dado em CSharp
	+ Declaração de um tipo
		+ Pode incluir seus membros, tipo base, interfaces implementadas e operações permitidas para esse tipo
+ Uma variável é um rótulo que se refere a uma instância de um tipo específico
### Tipos de referência 
+ Variáveis de tipo de referência armazenam referências a seus dados (objetos); 
+ Duas variáveis podem referênciar o mesmo objeto
	+ É possível que operações em uma variável de tipo de referência afetem o objeto referênciado por outra variaável.
##### Tipos de classe
+ Classe base definitiva de todos os outros tipos: object
###### Cadeias de caracteres Unicode: string
+ Representa uma sequência de unidades de código UTF-16
+ Tipos definidos pelo usuário do formulário class C {...}
##### Tipos de interface
+ Tipos definidos pelo usuário do formulário interface I {...}
##### Tipos de matriz
+ Unidimensional, multidimensional e irregular. Por exemplo: int[], int[,] e int[][]
+ Matriz irregular é uma matriz cujos elementos são matrizes
##### Tipos delegados
+ Tipos definidos pelo usuário do formulário 
	+ delegate int D(...)
### Tipo de valor
+ Variáveis de tipo de valor contem diretamente seus dados.
+ Cada variável tem sua própria cópia dos dados
+ Não é possível que operações em uma variável afetem a outra (exceto em variáveis de parâmetros ref e out)
##### Tipos simples
###### Integral com sinal
+ sbyte
+ short 
+ int
+ long
###### Integral sem sinal
+ byte
+ ushort
+ uint
+ ulong
###### Caracteres Unicode
+ char (representa uma unidade de código UTF-16)
###### Ponto flutuante binário de IEEE
+ float, double
###### Ponto flutuante decimal de alta precisão
+ decimal
###### Boolean
+ bool (representa valores boolianos)
##### Tipos de enumeração
+ Tipos definidos pelo usuário do formulário **enum E {...}**
+ É um tipo distinto com constantes nomeadas.
+ Cada tipo enum tem um tipo subjacente, que deve ser um dos oito tipos integrais
+ O conjunto de valores de um tipo enum é o mesmo que o conjunto de valores de tipo subjacente
##### Tipos struct
+ Tipos definidos pelo usuário do formulário struct S {...}
##### Tipos de valor anulável
+ Extensões de todos os outros tipos de valor com um valor null
+ Faz com que tipos de valor possuam a capacidade de receber valores nulos
##### Tipos de valor de tupla
+ Tipos definidos pelo usuário do formulário (T1, T2, ...)

+ Identificador
	+ Nome de uma variável
	+ Sequência de caracteres unicode sem nenhum espaço em branco
	+ Podemos usar uma palavra reservada como identificador de uma variável prefixando @
		+ Pode ser útil ao interagir com outros idiomas

### Declarações de tipos
+ Criar novos tipos
+ Especifica o nome e os membros do novo tipo
+ categoria de tipos definidas pelo usuário
	+ tipos de
		+ classe
		+ struct
		+ interface
		+ enum 
		+ delegados
		+ valor de tupla
		+ record, record struct, record class
			+ Usamos records principalmente para armazenar valores, com o mínimo de comportamento associado

#### Tipo class
+ Define um estrutura de dados que contém membros de dados (campos) e membros de função (métodos propriedades e campos)
+ Dão suporte a heranã única e ao polimorfismo, mecanismos nos quais as classes derivadas podem estender e especialiazar as classes base
#### Tipo Struct
+ Semelhante a um tipo de classe que representa uma estrutura com membros de dados e membros de função. 
+ Diferente das classes structs são tipos de valor e, normalmente, não precisam de alocação de heap. 
+ Não dão suporte à herança especificada pelo usuário, e todos os tipos de estrutura são herdados implicitamente do tipo object
#### Tipo interface
+ Define um contrato como um conjunto nomeado de membros públicos
+ Uma classe ou struct que implementa uma interface deve fornecer implementações de membros da interface
+ Pode herdar várias interfaces base 
+ Uma classe ou struct pode implementar várias interfaces
#### Tipo delegate
+ Representam referências aos métodos com uma lista de parâmetros e tipo de retorno específicos. 
+ Possibilitam o tratamento de métodos como entidades que podem ser atribuidas a variável e passadas por parâmetro
+ São análogos a tipos de função fornecidas pelas linguagens funcionais
+ Semelhantes ao conceito de ponteiro de função
+ Diferente de ponteiros de funçao, os delegados são orientados a objetos e fortemente tipados

![[📂 Files/Image/Pasted image 20221111191959.png]]


> Os tipos class, struct, interface e delegate dão suporte a genéricos e podem ser parametrizados com outros tipos

> Para cada tipo não nulo T há um tipo anulável correspondente T?, que pode conter um valor adicional, null
> Ex: int? --> é um tipo que pode conter qualquer inteiro de 32 bits ou o valor null

> Sistema de tipos unificados
> 	um valor de qualquer tipo pode ser tratado como um  object

> 	Cada tipo no C#, direta ou indiretamente, deriva do tipo de
	classe object , e object é a classe base definitiva de todos os tipos

+ Os valores de tipo de referência são tratados como objetos simplesmente exibindo os valores como tipo object
+ Os valores de tipo de valor são tratador como objetos, executando conversão boxing e operações de conversão unboxing
![[📂 Files/Image/Pasted image 20221111193003.png]]
## References
1. 