#  ASP.NET por baixo dos panos
----
**Type:** #FleetingNote
**Topics:**
**Related:**
**created:** 11-10-2022 18:25

----
# Owin
+ Open Web Interface for .NET
+ Especificaçãos de como separar o servidor da aplicação
+ ![[📂 Files/Pasted image 20221011182645.png]]
+ Note que a aplicação depende do IIS (auto acoplamento); 
+ ![[📂 Files/Pasted image 20221011182948.png]]
+ A ideia do Owin é separar a aplicação do ambiente em que ela está hospedada
+ Owin é uma especificação que explica como contruir a interface entre o WEB HOST e a aplicação aspnet
+ Tudo se trata de colocar as coisas num fluxo de operações; 
+ ASP.NET é totalmente independente de sistema operacional e de ambientes de hospedagem; 
# Middleware
+ São partes de software em uma aplicação aspsnet core;
+ Essas partes trabalham em cima dos dados entre requests e responses;
+ Possui uma responsabilidade única; 
+ Pode trabalhar lado a lado com outros middleware's; 
+ Quando falamos do pipeline do asp.net core estamos falando basicamente de middware's
+ ![[📂 Files/Pasted image 20221011183304.png]]
+ ![[📂 Files/Pasted image 20221011183408.png]]
+ ![[📂 Files/Pasted image 20221011183741.png]]
+ ASP.NET Core ---> Tecnologia
+ MVC Core, Identity, etc.. ---> Middleware; 
+ ASP.Net é um pipeline e para que ele rode precisamos compor ele com middleware's

# Entendendo as interfaces
## IConfigurações
+ Representa a raiz de uma heirarquia; 
+ Responsável por gerenciar as constraints do ASP.NET Core
+ ![[📂 Files/Pasted image 20221011184109.png]]
+ Recebemos do próprio ASP.NET uma instância do tipo IConfiguration; 
## IServiceColletion
+ Representa um contrato para uma coleção de serviços; 
	+ Usamos os serviços para configurar os middlewares
+ Essa interface é estendida por classes que implementam Middlewares através do recurso de injeçççao de dependência; 
## IAplicationBuilder
+ Representa um contrato para classes que irão prover mecanismos de configuração de um Middleware.
+  Essa interface é estendida por classes que implementam métodos de configuração para cada Middleware
### Extensões
#### app.UseHttpsRedirection() 
+ Redirecionar requisições http para https;
#### app.UseStaticFiles();
+ Utilizar os aquivos estáticos presentes na pasta wwwroot
#### app.UseCookiePolicy();
+ Utilizar política de cookies
#### app.UseAuthentication()
+ Habilitar o identity caso ele tenha sido adicionado no configureServices

> No IServiceColletion adicionamos itens (middleware's) ao pipeline do asp.net core. No IApplicationBuilder configuramos os middleware's adicionaodos
> ![[📂 Files/Pasted image 20221011185359.png]]
+ Configure colocado após o ConfigureServices; 
> Aplicação apsnet core é um livro em branco que colocamos itens e modelamos como eles vão se comportar

## IHostingEnvironment
+ Fornece informações sobre o ambiente de hospedagem web em que uma aplicação está sendo executada.
### Extensões
#### app.UseDeveloperExceptionPage()
Tela contendo informações de exceptions
#### app.UseDataBaseErrorPage();
Tela contendo informaçoes sobre falhas de conexão com o banco
![[📂 Files/Pasted image 20221011185933.png]]

> O próprio ASP.NET já oferece a injeção de dependência de algumas classes; 
> Ex: IConfiguration, IApplicationBuilder, IServiceColletion, etc 

# Criando nosso próprio middleware
A classe de nosso middlaware deve possui uma variável do tipo RequestDelegate, que chama o próximo middleware no pipeline (A ordem do pipeline é importante); 
![[📂 Files/Pasted image 20221011192922.png]]

Devemos também ter um método InvokeAsync que é chamado toda vez que nosso middleware for chamado; 
	Ele recebe a instância do httpcontext que está rodando no momento da requisição
		Utilizamos essa requisição para repassar a chamada do método para o próximo middleware
	Um middleware é chamado, chama o próximo e depois retorna para ele. 
	![[📂 Files/Pasted image 20221011192940.png]]
Entre o antes e depois colocamos nossa lógica para processar a request mandar para o próximo middleware e processar o retorno

Alguns middlawre's não precisam ser adicionados ao pipiline antes da configuração

![[📂 Files/Pasted image 20221011193539.png]]
> dotnet watch run
> 	Fica observando a aplicação. Quando um arquivo for modificado a aplicação é reestartada

![[📂 Files/Pasted image 20221011201505.png]]
A ordem que chamamos os middlewares importa para o pipiline do aspnet. 
Ex: Se estivessemos utilizando o Identity e MVC, deveríamos colocar o Identity antes do MVC; 

O MVC, por padrão, deve ser o último a ser chamado;
![[📂 Files/Pasted image 20221011201740.png]]
# Resumo
ASP.NET é uma framework aberto e customizável, saímos de um bloco monolítico (System.Web) para uma plataforma aberta e flexível.

O novo pipeline do ASP.NET Core é uma coleção de Middlewares traballhando em conjunrto no estilo "pay as you go" que significa que usaremos somente aquilo que for necessário e nada mais; 

> Pensar no aspnet core como uma pilha de middleware's
## References
1. 