  **Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 14-11-2022
Created-time:: 13:17
Liteturature-Note:: 
Tags:: 

# Arquitetura da plataforma .NET

Quando vamos desenvolver para a plataforma .NET precisamos enteder como ela é composta e quais são os requisitos para que uma determinada linguagem possa ser utilizada. 

O funcionamento da plataforma se dá por um esquema de virtualização de execução. Nosso código fonte pode ser escrito em várias linguagens, sendo que elas atendem a requisitos previstos nas especificações na CTS e CLS. Quando copilado, o código-fonte gera uma linguagem intermediária. E essa é transformada em código de máquina por demanda pela CLR em um processo JIT. 

Quando dizemos que um sistema desenvolvido em .NET é auto-explicativo, estamos querendo dizer que ele próprio contém informações sobre suas estruturas, definições e membros. Essas informações estão contidas nas METATAGS que ficam contidas dentro do próprio sistema. Dessa forma, nenhum dado fica armazenado no sistema operacional em que desenvolvemos

MSIL ou IL é uma linguagem intermediária que nos possibilita a flexibilidade de fazer com que módulos desenvolvidos em linguagens diferetens conversem sem muitos problemas. Para que uma linguagem seja compatível com o sistema de conversão para IL, bastas que ela siga as especificações CLS e CTS. 

Na plataforma .NET temos um ambiente de execução das aplicações chamado de Common Language Runtime. Esse componente é responsável pelo gerenciamento de memória através do garbage collector, isto é, o gc está presente dentro da CLR . Além do GC, temos no CLR um interpretador da IL que interpreta a IL e a compila para código de máquina correspondente a arquitetura do computador do host de forma Just-In-Time.

Temos também um sistema de tipos unificados. Seja tipos de valor ou referência, todas os tipos derivam do tipo System.Object. 
No caso dos tipos de valores, eles derivam do tipo System.ValueType, que por sua vez deriva de System.Object. Tipos de referência derivam diretamente de System.Object. 

As especificações CLS nos ditam um conjunto de regras que as linguagem tem que adotar para que ela possa ser convertida em IL. Na hora que vamos compilar, é gerado apenas 1 tipo de código IL, que independe da linguagem.

Além desses componentes e especificações citados, há ainda uma camada de bibliotecas padrão da plataforma, a BCL (Base Class Libray). Nela temos os tipos básicos para trabalhar com as funcionalidades da plataforma .NET todos organizados de maneira lógica por meio de namespaces. 
A biblioteca System nos dá acesso a módulos de mais baixo nível, tais como tipos primitivos, funções de matemática e gerenciamento de memória. 
Além dela, temos diversas outras, tais como: System.Security, System.IO, System.NET, System.Drawing, System.Refletion, System.Diagnostics, System.Colletions, System.Web, System.XML

Em resumo, quando desenvolvemos um projeto na plataforma .NET utilizando uma linguagem suportada, escrevermos o código-fonte nesse linguagem utilizando as classes base da plataforma e a compilamos para linguagem intermediária. Essa é interpretada pela CLR para que seja compilado um código de máquina por demanda para a arquitetura do computador do host. 

Em metadatas temos informações relativas a definição de classes, estruturas, tipos de enumeração, membros e etc, podendo ser geradas em arquivos executáveis ou em DLL (Dynamic Link Library), isto é,  assemblys.
## References
1. 