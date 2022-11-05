**Meta data**
Note-type:: #Zettel/Fleeting
Note-Status:: #Zettel/Status/Pending 
Tags:: 
Created:: 03-11-2022 15:49

# 10 - Configurações no ASP.NET Core
## 10.1 - Externalizando configurações
+ Para deixar a nossa classe mais limpa podemos externalizar configurações em classes de extensão
+ Melhora da legibilidade do código; 
+ Podemos Isolar cada tipo de configuração em classes de extensão com o nome da configuração realizada
+ 
## 10.2 - Ambientes de excução do ASP.NET Core
+ Pasta proprietis
+ Configuramos como vamos rodar nossas aplicações
+ Podemos tanto definir onde iremos hospedar a aplicação
	+ Configurações de uso o IIS ou auto host;
+ Podemos definir a connection string de cada ambiente
### Criando objeto de configuração 
![[📂 Files/Pasted image 20221103163323.png]]
Quando chamarmos o método build do objeto builder ele nos fornece um objeto contendo as configurações defindas
Podemos definir uma configuração de inicialização para ambientes personalizados conforme a necessidade
## 10.3 - UserSecrets
+ Podemos salvar dados em um arquivo local específico para o usuário; 
+ Ideal para reposiórios públicos
+ ![[📂 Files/Pasted image 20221103164222.png]]
## 10.4 - Tratamento de Erros
![[📂 Files/Pasted image 20221103164822.png]]
Note que colocamos um middleware para tratamento de erros caso o ambiente seja diferente de desenvolvimento
	
No de desenvolvimento usamos uma view que nos mostra detalhes dos erros
	Podemos ver cookies, headers, e etc
Podemos personalizar como os nossos erros são manipulados modificando o controller que lida com este erro; 

Para criarmos manipuladores de erros personalizados conforme o código de erro http podemos usar 
![[📂 Files/Pasted image 20221103165915.png]]
Onde o placeholder {0} é onde o código de erro irá ser insirido para ser passdo pelo método
No nosso filtro de acesso poderiámos implementar o retorno do código de erro de acesso negado para ser pego pelo middleware que lida com códigos de erro
![[📂 Files/Pasted image 20221103170207.png]]
# 10.5 - Trabalhando com logs no ASP.NET
+ Para fazer logs com a própria estrutura do ASP.NET devemos utilizar a classe Logger injetando-a pela interface ILogger na classe em questão; 
+ Para fazer persistência de logs no ASP.NET precisamos utilizar uma ferramenta de terceiros;
## KissLog
> Pacote: KissLog.AspNetCore
> ![[📂 Files/Pasted image 20221103202137.png]]
# 10.6 - Filtros no ASP.NET Core
+ Middlewares são diferentes de filtros
+ Middlewares são componentes do aspnet
+ O próprio mvc é um middleware
+ Dentro do MVC temos o pipeline onde os filtros se aplicam
	+ Os filtros fazem parte do MVC e não do ASP.NET como um todo
![[📂 Files/Pasted image 20221103201105.png]]
## Implementando um ActionFilter
+ Devemos implementar a interfae IActionFilter
+ ![[📂 Files/Pasted image 20221103201242.png]]
### Exemplo
+ ![[📂 Files/Pasted image 20221103201452.png]]
+ ![[📂 Files/Pasted image 20221103201821.png]]
+ Dessa forma defimos o filtro de maneira global 
+ Poderiamos criar uma classe ActionFilterAtribute e decorar os controllers ou actions
## References
1. [Curso Dev.IO](https://bkbankcombr-my.sharepoint.com/personal/bruno_barreto_bkbank_com_br/_layouts/15/onedrive.aspx?FolderCTID=0x012000B29AB324226ACF41923AA3D68471278B&id=%2Fpersonal%2Fbruno%5Fbarreto%5Fbkbank%5Fcom%5Fbr%2FDocuments%2FEstudos%2FCursos%2FDesenvolvedor%20IO%2F2%2E%20Dominando%20o%20ASP%2ENET%20MVC%20Core%2F10%2E%20Configura%C3%A7%C3%B5es)