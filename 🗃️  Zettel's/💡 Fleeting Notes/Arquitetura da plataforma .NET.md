**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 14-11-2022
Created-time:: 10:29
Liteturature-Note:: [[🗃️  Zettel's/📝 Literature Notes/Arquitetura da plataforma .NET]]
Tags:: 

# Arquitetura da plataforma .NET

+ A plataforma tem independência em relação a linguagem de programação; 
	+ Possibilidade de trabalhar com várias lingaugens e interagir entre elas
+ As linguagens suportadas pelo .NET são transformadas em linguagem intermediárias (IL)
+ O código em IL é compilado do CLR, que transforma tudo em uma única linguagem.
+ Sistemas desenvolvidos em .NET são auto-explicatiovos: 
	+ Cada programa compilado tem em si as informações necessárias em METATAGS 
		+ Runtime não precisa procurar informações no registro do windows
	+ Quando criamos um sistema o mesmo pode ser executado em qualquer máquina que suporte a plataforma.
	+ Todas as informações necessárias para que o sistema seja executado estão presentes nas METATAGS dentro dele mesmo

+ MSIL ou IL é uma linguagem intermediária. 
	+ Independentemente da linguagem que escolhermos, o código será convertido em IL
	+ Para que uma linguagem seja compatível com .NET ela precisa seguir as especificações CLS e CTS
+ CLR (Common Language Runtime)
	+ Ambiente de execução das aplicações .NET. 
	+ O CLR cuidará do gerenciamento de memória através do GC
	+ Dentro da CLR temos um  compilador JIT que interpreta a IL e gera a linguagem de máquina na arquitetura do processador.
+ CTS (Common Type System)
	+ É a definição de tipos de dados onde tudo é um objeto e deriva da classe System.Object, que é o núcleo do sistema de tipos
	+ Tipos de valor
		+ São alocadas diretamente na pilha (stack)
		+ Tem como classe base a System.ValueType, que por sua vez deriva da classe System.Object
	+ Tipos de referência
		+ São alocadas na memória heap e tem como classe base somente a classe System.Object
![[📂 Files/Image/Pasted image 20221114104843.png]]
+ CLS (Common Language Specification - Especificação comum de dados)
	+ Conjunto de regras que as linguagens devem seguir para serem geradas para IL
	+ No momento da compilação é gerado apenas 1 único tipo de código IL
		+ Interação entre linguagens
+ BCL (Base Class Libray - Biblioteca de classes base)
	+ Biblioteca de classes base organizadas em namespaces
	+ System
		+ Classes  de baixo nível usadas para trabalhar com tipos primitivos, operações matemáticas, gerenciamento de memória, etc
	+ System.Colletions
		+ Pilhas, filas e listas encadeadas
	+ System.Data, System.Data.Common, System.Data.OleDb, System.Data.SqlClient
		+ Acesso a base de dados; 
		+ ADO.NET se encontra aqui
	+ System.Diagnostics
		+ Log de event, mediação de performance, gerenciamento de processos, depuração
	+ System.Drawing e namespaces derivados
		+ Biblioteca de componentes para trabalhar com gráficos, chamdas GDI+
	+ System.IO
		+ Biblioteca para lidar com entrada e saída, gerenciamento de arquivos
	+ System.NET
		+ Biblioteca para a programação de redes e sockets
	+ System.Refletion
		+ Biblioteca para gerar código em tempo de execução, descobrir tipos de variáveis etc
	+ System.Security
		+ Criptografia
		+ Permissão
		+ Todo suporte referente a segurança
	+ System.Web
		+ Biblioteca relacionada a web, como webservices, ASP.NET
	+ Windowns Forms
		+ Biblioteca de desenvolvimento de aplicações windows tradicionais
	+ System.XML
		+ Biblioteca que permite a interação com documentos XML
## Estrutura da arquitetura .NET em camdadas
### 1 - Linguagem de programação preferida e aceita pela especificação da CLS (Commom Language Specification) e CTS (Common Type System).

### 2 - BCL (Base Class Library)

### 3 - CLR (Common Language Runtime)

### 4 - CTS (Common Type System) e CLS (Common Language Specification)

+ Escrevemos o código fonte em uma linguagem que atende as especificações CLS e CTS. 
+ Utilizamos as classes provenientes da BCL. 
+ Código-fonte é compilado para IL, essa sendo interpretada pela CLR, que deverá passar pelas especificações CTS e CLS

## Metadados ou Metadata
+ Um programa feito na plataforma .NET não utiliza o registro do Windows por ser auto-autoexplicativo. As informações são armazenadas em metada data dentro de cada programa no momento da compilação.
+ As informações podem ser
	+ Definição de classes, estruturas, tipos enumerados, que foram utilizados na aplicação, podendo esta ter sido gerada em forma de DLL ou executável.
	+ Descrição dos membros: propriedades, métodos, eventos
	+ Descrição de cada unidade de código externo (assembly) usada na aplicação e que é requerida para que esta execute adequadamente
	+ Resolução de chamada de método
	+ Resolução de versões diferentes da aplicação
> Outra coisa muito importante nas aplicações .NET é que mesmo duas aplicações sendo homônimas, elas convivem normalmente no mesmo ambiente. Isto acontece porque na METADATA contem a versão de cada um, evitando o conflito entre as aplicações. A CLR procura na METADATA a versão correta da aplicação a ser executada.
## Assembly
+ Toda aplicação .net quando compilada é armazenada fisicamente numa unidade de código denominada assembly
+ Uma aplicação é composta por um ou mais assemblys
+ São representados no sistema de arquivos do sistema host na forma de arquivos executáveis ou de uma biblioteca de ligação dinâmica (DLL - “**Dynamic Link Library**”)
## PE (Portable Executable - Executável Portátil)
+ Código fonte gerado poderá ser interpretado (executado) em qualquer plataforma que tenha suporte .NET, sem necessidade de recompilação do fonte.
## Compilação JIT (Just-in-time)
+ Compilador JIT (JITTER)
+ Converte instruções da IL para instruções específicas da arquitetura do processador onde a aplicação .NET esta sendo executada
### Pre-JIT
+ Compilado de uma vez só todo o código da aplicação .NET que está sendo executada e o armazena no cache para uso posterior
### Econo-JIT
+ Utilizado em Hand-Helds onde a memória é um recurso precioso; 
+ Código é compilado sob demanada e a memória alocada que não esta em uso é liberada quando o dispositivo assim o requer
### Normal-JIT
+ Compila o codigo IL sob demanda e joga o código resultante em cache, de forma que esse código não precise ser recompilado quando houver uma nova invocaçãop do mesmo método
# VES (Virtual Execution System - Sistema de execução virtual)
+ Processo de compilçação
+ É onde o JITTER é ativado quando uma aplicação dotnet é chamada
![[📂 Files/Image/Pasted image 20221114112427.png]]
![[📂 Files/Image/Pasted image 20221114112513.png]]
# Garbage Collector
+ Quando uma área da memória não está mais em uso, o GC trata de liberá-la
+ Também nos prove um novo espaço de memória
> Não é por isso que você deixará de finalizar seus objetos, mas caso isso aconteça (esta é a pior das hipóteses) o GC tratará este caso

  
Read more: [http://www.linhadecodigo.com.br/artigo/120/arquitetura-net-msil-clr-cts-cls-blc-jit.aspx#ixzz7kcps92fu](http://www.linhadecodigo.com.br/artigo/120/arquitetura-net-msil-clr-cts-cls-blc-jit.aspx#ixzz7kcps92fu)
Read more: [http://www.linhadecodigo.com.br/artigo/120/arquitetura-net-msil-clr-cts-cls-blc-jit.aspx#ixzz7kcmI9dDW](http://www.linhadecodigo.com.br/artigo/120/arquitetura-net-msil-clr-cts-cls-blc-jit.aspx#ixzz7kcmI9dDW)
  
Read more: [http://www.linhadecodigo.com.br/artigo/120/arquitetura-net-msil-clr-cts-cls-blc-jit.aspx#ixzz7kckI07HT](http://www.linhadecodigo.com.br/artigo/120/arquitetura-net-msil-clr-cts-cls-blc-jit.aspx#ixzz7kckI07HT)

  
Read more: [http://www.linhadecodigo.com.br/artigo/120/arquitetura-net-msil-clr-cts-cls-blc-jit.aspx#ixzz7kcjsKwhW](http://www.linhadecodigo.com.br/artigo/120/arquitetura-net-msil-clr-cts-cls-blc-jit.aspx#ixzz7kcjsKwhW)
## References
1. 