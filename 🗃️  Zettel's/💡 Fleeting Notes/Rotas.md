#  Rotas
----
**Type:** #Zettel/NoteType/Fleeting
**Topics:**
**Related:**
**created:** 11-10-2022 20:41

----
Rotas são basicamente estruturas de navegação personalizadas para que a URL da aplicação possua determinado padrão e atenda as necessidades de passagem de parâmetros 
![[📂 Files/Pasted image 20221011204707.png]]
Note que definmos no template como será o padrão de rotas aceitos pela nossa aplicação
	Definimos também as rotas default ex "controller=home"
## Atribute Routes
Rotas por atributos é uma maneira alternativa de trabalhar com rotas
São muito mais flexíveis e fáceis de personalizar; 
As rotas valem apenas para a controller qual foi configurada
![[📂 Files/Pasted image 20221011204859.png]]
Podemos realizar sobrecargas de rotas
## Action Results
No asp.net Core um Action Result é o tipo de retorno da action da controller
É utilizada a interface IActionResult que pode retornar alguns tipos de resultados
![[📂 Files/Pasted image 20221011205114.png]]
Quando um controller response, normalmente é uma ViewResult. 
Podemos retornar Json, Pedaços de html, arquivos físicos, retornos para outra action
## References
1. 