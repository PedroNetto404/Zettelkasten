---
note-type: #Zettel/NoteType/Fleeting 
note-status: #Zettel/Status/Pending 
media-type: 
date: 14-10-2022 13:47
tags:
---
#  Demo - Por dentro das Controllers

+ Adicionamos o padrão MVC ao pipeline do aspnet pelo comando
```c#
services.AddMvc(); 
```
+ Para setar a versão do padrão do mvc podemos usar o comando 
```c#
SetCompatibilityVersion( )
```

+ Após adicionar o Mvc ao pipeline do aspnet utilizamos após todos os app.Use utilizamos o app.UseMvc: 
```C#
app.UseMvc(routes => 
{
	routes.MapRoute
	(
		name: "default",
		template: "{controller=Home}/{action=Index}/{id?}"
	);
})
```
Quando colocamos "{controller=Home}/{action=Index}/{id?}", definimos um padrão "Home/Index"; 
## Conveções ASP.NET MVC
### Nome do controller
+ Deve se do tipo nomeController
### Nome da action
+ Deve ser o mesmo nome da view caso seja uma action que retorna uma view
Casso o nome da view seja o mesmo nome da action, podemos chamar apenas View()
![[📂 Files/Pasted image 20221014150402.png]]
### Criando mais rotas
+ A rota padrão deve ser a última a ser especificada
	+ Quando iniciamos o mvc, criamos um dicionário de rotas, 
	+ Ele varre as rotas até encontrar um rota válida
![[📂 Files/Pasted image 20221014150732.png]]

![[📂 Files/Pasted image 20221014150851.png]]
+ Note que o penúltimo parâmetro deve ser obrigatório
+ ![[📂 Files/Pasted image 20221014150910.png]]
+ ![[📂 Files/Pasted image 20221014150927.png]]
+ O nome deve ser o mesmo
+ ![[📂 Files/Pasted image 20221014151048.png]]
+ A primeira rota que bater com o padrão será a escolhida 
+ Mesmo não tendo o parâmetro, podemos informar o parâmetro pela rota:
+ ![[📂 Files/Pasted image 20221014151936.png]]
# Rotas nos controllers
## Atributo Route
![[📂 Files/Pasted image 20221014152257.png]]
Podemos anotar tanto no controller quanto nos métodos dele quais são as rotas aceitáveis
### Atributo de rotas
![[📂 Files/Pasted image 20221014152648.png]]
+ Devemos tomar cuidados para não gerar colisões de rotas;
	+ Devemos ter uma única rota default dentro de uma controller, por exemplo
+ Não podemos interpretar dois resultados para duas rotas; 
+ Devemos ter uma rota específica cada cada coisa; 

+ Na sobrecarga de rotas a última rota prevalesce

+ Quando a aplicação sobe no servidor o asp.net monta um dicionário de rotas com todas as rotas que foram moldadas
#### Recebendo parâmetros: 
![[📂 Files/Pasted image 20221014153427.png]]
Note que os dois parâmetros são obrigat´roios, pare remover a obrigatoriedade do ultimo parâmetro devemos informar um ?

### Constraint de atributos de rota
![[📂 Files/Pasted image 20221014153711.png]]
![[📂 Files/Pasted image 20221014153723.png]]
![[📂 Files/Pasted image 20221014153741.png]]

+ Poderiamos, claro, não utilizar nenhuma restrição de rota e pegar no parâmetro da action os dados como int. Mas, colocando a restrição evitamos problema, porque qualquer rota que fuja do padrão será interpretada como não existente
# Conceito por trás das action
+ Elas sempre retornam um resultados; 
+ Se temos um retorno do tipo IActionResult, somos obrigados a retornar algum tipo que implementa o mesmo tipo/ 
## IActionResult
+ Interface que define a assinatura do método Task ExecuteResultAsync(ActionContext context); 
+ ![[📂 Files/Pasted image 20221014154743.png]]
## Controller
![[📂 Files/Pasted image 20221014154856.png]]
## ControllerBase
## Exemplo de retorno de json e arquivo txt
![[📂 Files/Pasted image 20221014155025.png]]

![[📂 Files/Pasted image 20221014155230.png]]
## References
1. 