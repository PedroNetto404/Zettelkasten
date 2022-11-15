**Meta data**
Note-type:: #Zettel/NoteType/Fleeting 
Note-Status:: #Zettel/Status/Pending 
Tags:: 
# Views
## Razor Sintax
+ No MVC o motor de renderização das views chama-se razor, logo níos temos as Razor Views que sçãi arquivos HTML mesclados com recursos razor; 
+ Podemos pensar em views fortemente tipadas; 
+ O mecanismo razor transforma as views em arquivos HTML puros para a interpretação do Browser; 
+ Podemos ter apenas 1 model associada a uma única view; 
+ Razor é tanto o nome do motor de renderização, qaunto da sintaxe
+ Uma página razor conhece que a nossa model que queremos persistir ----> page fortemente tipada
## Tag Helpers
## Custom Tag Helpers
## \_ViewStart
## \_ViewImports

## Layouts
## Formulários
+ Recurso do razor para geração de HTML
+ Nas versões anteriores do ASPNET MVC 5 este reucrso chama-se HTML Helpers e são muito similares
+ ![[📂 Files/Pasted image 20221025180834.png]]
+ ![[📂 Files/Pasted image 20221025181134.png]]
+ Dentro da pasta views temos: 
	+ Pasta para views compartilhadas
	+ Views de controllers
	+ View de de start
	+ View de importação de componentes que serão usados de forma global

## Partial Views
+ São pedaços de uma view que possuem dados e que podem ser reaproveitados em n views -----> reaproveitamento de código; 
+ Dependem do modelo de implementação na view principal, gerando certa limitação no seu uso; 
+ São usadas para renderizar dinamicamente parte de uma view através de requisições ajax; 
+ Se houver dependencia de uma model entre a partial view e a modelo de chamada, essa ultima tem que implementar a model
## View Components
+ Recurso do ASP.NET Core para desenvolvimento de componentes indepenentes da views; 
+ Possuem processamento server-side independente e podem realizar açpões como obter dados de uma tabela e exibir valores manipulados; 
+ Funcionalidade para componentizar recursos de página; 
+ Trabalha de forma semelhante a uma partial view,  mas possui independencia em relação a model; 
+ Possui sua própria classe de acesso a dados e é um pedaço de html como a partial view
+ Uso de componentes são mais aproveitados que as partials
## Demonstração
Uma view pertence a apenas uma controller, não podendo ser acessada por outro controller. Como excessão temos a pasta shared que pode ser acessada por qualquer view; 
+ Na pasta start podemos definir o layout padrão ou deixar o layout dinâmico segundo alguma lógica
+ Em um arquivo de layout temos todo html estruturado; 
	+ Com o método RenderBody() chamamos a renderização das views dentro do layout; 
	+ Com o método RenderSection() podemos chamar um script que foi definido na view para baixo dos recursos que foram importados acima do layout, por exemplo. ASsim podemos executar os scripts da page após as dependencias
+ ViewImports
	+ Importar modelos, namespaces; 
	+ Tudo que acontece nas views precisa ser precviamente importado; 
	+ ![[📂 Files/Pasted image 20221025182839.png]]
+ Para renderizar a partial view
	+ ![[📂 Files/Pasted image 20221025184332.png]]
	+ ![[📂 Files/Pasted image 20221025184320.png]]
	+ Podemos usar partial para não ficar repetindo codigos que aparecem em várias partes do projeto; 
+ View Components
	+ Criamos uma pastas "ViewComponents"
	+ Criamos uma classe com o nome do componente
	+ Precisamos que a classe herde de ViewComponent
	+ Podemos nomear o viewcomponent pelo atributo ![[📂 Files/Pasted image 20221025184907.png]]
	+ Precisamos ter o método InvokeAsync
	+ Criamos na pasta view/shared a pasta components/Nome_Componente 
	+ Para cada componente temos uma pasta
	+ ![[📂 Files/Pasted image 20221025185356.png]]
	+ ![[📂 Files/Pasted image 20221025185410.png]]
+ 
## References
1. https://bkbankcombr-my.sharepoint.com/personal/bruno_barreto_bkbank_com_br/_layouts/15/onedrive.aspx?FolderCTID=0x012000B29AB324226ACF41923AA3D68471278B&id=%2Fpersonal%2Fbruno%5Fbarreto%5Fbkbank%5Fcom%5Fbr%2FDocuments%2FEstudos%2FCursos%2FDesenvolvedor%20IO%2F2%2E%20Dominando%20o%20ASP%2ENET%20MVC%20Core%2F4%2E%20Views%2FM4V01%20%2D%20Intro%201080p%2Emp4&parent=%2Fpersonal%2Fbruno%5Fbarreto%5Fbkbank%5Fcom%5Fbr%2FDocuments%2FEstudos%2FCursos%2FDesenvolvedor%20IO%2F2%2E%20Dominando%20o%20ASP%2ENET%20MVC%20Core%2F4%2E%20Views