#  Tipos de Projeto e o Framework ASP.NET
----

**Type:** #Zettel/NoteType/Fleeting
**Status:** #Zettel/Status/Pending
**Topics:** 
**Related:**
**created:** 07-10-2022 16:21

----


## Templates
Recursos pré-moldados utilizando todos os recursos que uma tecnologia oferece
![[📂 Files/🖼️ Images/Pasted image 20221007162344.png]]
![[📂 Files/🖼️ Images/Pasted image 20221007165007.png]]

+ ASP.NET Core é um framework para web
	+ Nele temos tudo que precisamos para o desenvolvimento WEB
	+ Está subdividido em: 
		+ Identity
			+ Autenticação do usuário; 
			+ Gestão de usuários; 
			+ Está no topo da pilha de tecnologias
			+ Baixo dele, temos: 
				+ Razor (Sites)
					+ MVC
						+ Substituto do web forms (não existe mais no asp.net core)
						+ Possui a maioria de sites e projetos desenvolvidos
						+ Aplica o padrão MVC
						+ Utiliza razor na parte do HTML
					+ Razor Pages
						+ Alternativa mais simples ao MVC
						+ Ideial para aplicações mais simples que não exigem a complexidade que o MVC tráz
					+ Razor Library
						+ Atende tanto ao MVC quanto o Razor Pages
						+ Criar uma parte de código que pode 
						+ Biblioteca de razor pages que pode ser utilizada tanto no Razor pages quanto no MVC
				+ Services
					+ Web API
						+ Semelhante ao MVC, mas sem a parte das views
						+ API que conversa através do HTTP
						+ 
						+ Implementa o padrão REST utilizando componentização do MVC
					+ SignalR
						+ Componente do ASP.NET Core focado em comubnicação em tempo real
							+ chat
						+ Entregar a mensagem através da conexão que o usuário tem com a aplicação
							+ Notificações
							+ 
						+ Faz a comunicação do lado do servidor (CSharp) como o lado do cliente (JS)
						+ 
				+ SPA
						+ Integração com as tecnologias Angular e React
						+ Blazor
							+ SPA diferente
								+ Em vez de entregar Js ou Ts, ele entrega WebAssembly
							+ Trabalha com razor
+ 
## References
1. [1. Iniciando com ASP.NET Core > 3. Minha primeira App ASP.NET Core](https://bkbankcombr-my.sharepoint.com/personal/bruno_barreto_bkbank_com_br/Documents/Estudos/Cursos/Desenvolvedor%20IO/1.%20Iniciando%20com%20ASP.NET%20Core/3.%20Minha%20primeira%20APP%20ASP.NET%20Core/M03V01%20-%20tiposProjetos%201080p.mp4)
2. 