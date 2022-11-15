**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Tags:: 
Created:: 31-10-2022 20:01
# Continuação módulo Views
+ Cada controller tem suas views separadas dentro de uma pasta com o mesmo nome
+ \_ViewStart
	+ Diz qual o Layout principal da aplicação
+ \_ViewImports
	+ Importas componentes que seram utilizados de forma global
+ _Layout.cshtml
# PartialViews
+ São pedaços de uma view que possuem dados e que podem ser reaproveitados em N views, assim proporciandndo mais reaproveitamento; 
+ As partial view depende do modelo de implementação na view principal, gerando certa limitação; 
+ Muito utilizado para renderizar dinamicamente via ajax; 
# View Components
+ aliado para desenvolvimento de componentes independetes das views
+ Possuem processamento server-side indepente e podem realizar ações como obter dados de uma tqabela e exibir valores manipulados
+ É uma excelente funcionalizae para componentizar recursos de página como carrinho de compras e etc
# Demo
+ Uma controller não consegue acessa uma view que não a pertence; 
+ Pasta shared
	+ Tudo aquilo que vai ser compartilhado com toda a aplicação
+ View start
	+ Definição de qual vai ser nosso layout default; 
	+ Poderíamos códificar alguma regra para escolha do layout
+ Podemos mudar o layout de uma view informando o valor Layout = "nome layout"
+ HTML do layout
	+ Temos toda a estrutura do html com header, body e footer
	+ O método renderbody renderiza a view dentro don layout
	+ O método renderSection renderiza os scripts 
+ View Imports
	+ Importamos tudo que será utilizado nas views
		+ Namespaces
		+ Libs
		+ Etc
+ Para utilizarmos uma partial view em uma view podemos utilzar o método @html.Partial ou a tag \<partial name = "nomePartial" />
	+ Utilizamos as viwesPartials desde que elas não tenham dependência com a model da page
+ Para utilizar as views components
	+ ![[📂 Files/Pasted image 20221031203848.png]]
		+ Criamos uma pasta chamada ViewComponents
		+ Criamos uma classe
		+ Herdamos de ViewComponent
		+ Podemos definir o nome do view componente pela anotation \[ViewComponent(Name = "Carrinho")]
		+ Precisamos criar um método InvokeAsync();
		+ Criamos uma pasta na pasta Shared chamada de components
			+ Dentro dela criamos uma pasta com o nome do nosso componente
				+ Criamos uma view com o nome default
		+ Para chamar um viewComponente em uma view utilizamos a tag helper \<vc: "NomeComponent">\</vc:"NomeComponent">
			+ Devemos colocar na view imports o nome do namespace global da aplicação entre " *, namespace"
			+ ![[📂 Files/Pasted image 20221031204114.png]]
# Formulários
+ Lembrando que o nome dos arquivos html corresponde ao nome do método no controller; 
+ ViewData é um dado temporário
	+ Array de informações acessadas pelo nome
	+ Mapeamento com módel por asp-for
+ ![[📂 Files/Pasted image 20221031210446.png]]
+ 
# Validações
+ asp-validation-for = "atributoModel"
+ ![[📂 Files/Pasted image 20221031210629.png]]
![[📂 Files/Pasted image 20221031210808.png]]
+ Validation sumary
	+ Criamos uma div e a atribuimos o atributo asp-validation-sumary="All/ModelOnly/None"
	+ All --> Todas as validações
	+ ModelOnly --> Apenas a da model
+ Note que enviamos os dados para o servidor e recebemos uma view com os mesmos dados mas com os erros caso ajam; 
+ Não é gerado no cliente os scripts de validação, mas sim no servidor; 
+ Para validar antes de realizar a submissão no lado do cliente devemos
	+ Adicionar uma sessão @section Scripts{ @await Html.RenderPartialAsync('partial com jqueryValidation1')}
# Scafolding
+ Geração de código automático
# Aplicando os conceitos
+ Podemos gerenciar as bibliotecas do lado do cliente com o wisard do visual studio gerenciando os pacotes necessários
+ Tag Helpers para ambiente
```html
<environment include ="Development">
	Inclusões em modo de desenvovlimento
<\environment>
<environment exclude ="Development">
	inclusões em ambiente diferente do development
<\environment>
```
![[📂 Files/Pasted image 20221101150747.png]]
### Bundle e minificação
+ criamos um arquivo json chamado bundleconfig.json
	+ Aqui definimos como queremos minificar os arquivos
	+ ![[📂 Files/Pasted image 20221101151614.png]]
	+ ![[📂 Files/Pasted image 20221101151728.png]]
### Tag Helper personalizada
+ Devemos criar uma classe derivada da classe TagHelper
+ Sobreescrevemos o método ProcessAsync
![[📂 Files/Pasted image 20221101181300.png]]
Modelamos o objeto output definindo atributos e conteúdo do processamento 
Precisamos fazer uma inclusão 
![[📂 Files/Pasted image 20221101181414.png]]
Utilizamos a quebac-case para escrever os nomes das tagHelps
![[📂 Files/Pasted image 20221101181537.png]] Para a classe EmailComercialTagHelper
Podemos definir propriedades na classe da tag helper e passar atributos direto pelos atributos do html
![[📂 Files/Pasted image 20221101181756.png]]

![[📂 Files/Pasted image 20221101181830.png]]

# 6 - Areas
+ Áreas proporcionam uma maneira de organizar uma aplicação ASP.NET MVC em grupos funcionais menores, cada um com seu próprio conjunto de Models, Views e controllers
+ Uma área é efetivamento uma nova estrutura MVC dentro da aplicação ASP.NET MVC;
+ Os componentes Lógicos como Models, Views e Controllers são mantidos em pastas diferentes. Podendo utilizar recursos diferentes ou compartilhados da aplicação
+ Temos uma pasta Areas 
	+ Dentro de uma área temos os objetos dessas área
		+ Controllers
		+ Data
		+ Models 
		+ View
+ Para utilizar as áreas nas views podemos adicionar a tag helper asp-area = "Nome da área"
+ Precisamos definir um template para utilizar as áreas
+ ![[📂 Files/Pasted image 20221101185009.png]]
	+ A palavra chave exists nos permite só rotearmos quando exirtir uma área com o nome informado; 
+ Para utilizar o mesmo layout em várias áreas precisamos trazer uma viewstrart dentro da raiz da pasta view das nossas áreas
Definição de nomeclatura personalizada
![[📂 Files/Pasted image 20221101185745.png]]
+ Uma área não é simplismente para personalizarmos a navegação, mas sim separar realmente os diversos módulos de uma aplicação complexa
+ Para não precisarmos ficar especificando rotas na startup podemos definir as anotações route; 
+ Temos que tomar cuidado com as rotas default definidadas na strartup
+ Mapeamento para área na startup
```C#
routes.MapAreaRoute("name", "areaName", "templateRota")
```
# 7 - Injeção de dependência
+ Injeção de dependência é um padrão de design de codificação que faz parte dos princípios SOLID
+ A ideia é obter a IoC (inversão de controle) para simplificar as responsabilidades de uma classe
+ O ASP.NET Core dá suporte a injeção de dependência de forma nativa, porém é possível trabalhar com outros containers SimpleInjector, Autofac e tc.
+ A utilização de interfaces nos oferece a possiblidade de segregar as responsabilidades sem depender necessariamente de uma implementação concreta
+ A ideia de instânciar um objeto dentro de uma outra classe gera um acoplamento muito forte porque mudanças na classe instânciada muda instantaneamente a classe que instância; 
## injetando nas views
![[📂 Files/Pasted image 20221101203339.png]]
## Através de \[FromServices]
![[📂 Files/Pasted image 20221101203615.png]]
## Ciclos de vida
### Transiente
+ Obtém uma nova instância do objeto a cada solicitação
### Scoped
+ Reutiliza a mesma instância do objeto durante todo o request (web)
### Singleton
+ Utiliza a mesma instância para toda aplicação (devemos ter muito cuidado em utilizar)
# Entity Framework Core
![[📂 Files/Pasted image 20221101204248.png]]
+ É um ORM (Object Relacional Mapper)
# Configurando o contexto de acesso a dados
+ Devemos criar uma classe que herda de DbContext
+ Classe principal do EF
	+ Responsável por realizar o mapeamento dos nossos objetos (models) e liga-los a tabelas do banco de dados
+ Depois de criada a classe, precisamos adicionar o serviço ao container de serviços do ASP.NET
```c#
services.AddDbContext<MeuDbContext>
	(
		options.UseSqlServer("connectionString")
	)
```
+ Configurações do DbContext
```c#
public class MeuDbContext : DbContext 
{
	public MeuDbContext(DbContextOptions<MeuDbContext> options)
	: base(options)
	{
	}
}
```
## Criando nossas classes de modelo

## References
1. 