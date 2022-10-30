# Para deixar uma collection somente leitura
```c#
IReadOnlyColletion<T>
```
+ Quando criamos uma coleção a partir dessa interface, restringimos os métodos da coleção para somente leitura. 
+ Removemos, por exemplo, a possiblidade de usar o método Add; 
# Generics
Os genéricos introduz o conceito de parâmetros de tipo para .NET, o que possibilita criar classes e métodos que adiam a especificação de um ou mais tipos até que a classe ou método seja declarado e instanciado pelo código do cliente.
## Usamos generics em
+ Classes;
+ Interfaces;
+ Métodos;
+ Eventos; 
+ Delegates;
## Refletion
Informações sobre os tipos que são usadas em um tipo de dados genérico podesem ser obtidos em tempo de execução por meio de reflexão; 
## Uso de tipos com restrições
+ Podemos criar classes que definem restrições para utilizar restrições em classes que fazer uso de generics; 
## Vantagens
+ Reutilização de código; 
+ Desempenho; 
+ Segurança de tipos 

> Conversão com as: não retorna excessão, mas sim null caso dê errado ; 
> Conversão com (tipo) => lança excessão
> Pattern Match --> Pesquisar

+ Para Restrigirmos as nossas classes genericas para certos tipos por algum tipo de herança, podemos usar
```c#
public class Classe<T> where T : Entity
{

}
```
# Métodos de extensão
+ Podemos extender as classes já existentes com métodos de extensão. 
## Para criar: 
+ Classe estática; 
+ Método estático
	+ No parâmetro do método colocamos um this, que referencia a instância da objeto que acessar o método

> DTO ---> Pesquisar

# Linq
+ Linguagem de consulta integrada/ 
+ Conjunto de tecnologias com base na integração de recursos de consulta diretamente na linguagem c#
+ Como as consultas são feitas? 
	+ Geralmente são expressas como cadeias de caracteres, sem verificação de tipos no tempo de compilação ao suporte ao intelliSense; 
+ Temos a necessidade de entender a uma linguagem de consulta (SQL); 
## Vantagem
+ Sintaxe unificada; 
	+ Independe da fonte de dado; 
+ Verificação de tipo no tempo de compilação;
+ Suporte ao inteliSense
# 
1. Obter fonte de dados;
2. Criar consulta;
3. Executar consulta;

## Exe. adiada
+ Criamos a consulta, mas ela não é executada; 
+ Levamos a consulta para a memória, mas ela não é executada; 
+ Adiata até que iteramos sobre a variável; 
+ A variável armazena apenas as instruções da consulta

## Exe. imediata
+ Para forçar a execução imediata e armazenas na memória, basta executar .ToList() ou .ToArra(); 
## Como eu sei que posso executar uma consulta LINQ? 
+ A classe deve implementar a interface IEnumerable T ou uma interface derivada; 
+  "Tipos passível de consulta"
## Como fazer consultas LINQ? 
+ Através de métodos de extensão; 
+ Sintade de expressão de consulta; 