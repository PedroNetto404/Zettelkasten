**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Tags:: 
Created:: 03-11-2022 13:34

# Segurança no ASP.NET Identity
O ASP.NET Identity é um componente de segurança que trabalha com autenticação e autorização de usuários e possui diversas funcionalidades
![[📂 Files/Pasted image 20221103133916.png]]
## Implementando o identity
```shell
Install-Package Microsoft.AspNetCore.Identity.UI
```
![[📂 Files/Pasted image 20221103134812.png]]

No pipeline da aplicação devemos configurar o middleware
```c#
app.UseAuthentication
```
O identity trabalha criando um contexto do entityframework para criar os objetos de banco necessários para trabalhar com autenticação de usuários na aplicação; 
## Autenticação
+ Usuário logado e ativo na aplicação
+ Exigir credênciais para acessar acessar certas partes do código
![[📂 Files/Pasted image 20221103140457.png]]
Este controller só aceitas requisições de usuários autenticados.
Podemos colocar em todo o controller para restringir o acesso a todos os métodos dos controllers; 
Para permitimos que certas partes de uma controller ou até um controller, podemos permitir o acesso com a anotação \[AllowAnonymous]
+ Estamos logados na aplicação através de cookies
+ Quando fazemos logout excluimos os cookie do browser
## Autorização
+ Diz respeito a níveis de acesso ao áreas do código;
+ Role -> Papel 
+ Definimos a role na annotation Authorize
```c#
[Authorize(Role = "adm")]
```
+ As roles são persistidas via cookie
+ Cookies são criados quando fazemos login
+ ASP.NET Identity é modular
	+ Tudo que precisamos utilizar precisa ser configurado
	+ ![[📂 Files/Pasted image 20221103143145.png]]
	+ Roles são gravadas como claims
		+ Claim do tipo role
		+ ![[📂 Files/Pasted image 20221103143444.png]]
### Claims
+ Claim é uma alternativa ao uso de roles
+ São declarações / informações sobre o usuário
	+ Id, usuário, e-mail, etc
+ É dado que queremos transportar entre as requisções
+ São persistidas nos cookies
+ Podemos definir políticas de acesso através de polices 
	+ ![[📂 Files/Pasted image 20221103144232.png]]
	+ Claro que no Bd de persistência devemos ter as polices configuradas na tabela
	+ ![[📂 Files/Pasted image 20221103145413.png]]
	+ ![[📂 Files/Pasted image 20221103145737.png]]
	+ ![[📂 Files/Pasted image 20221103145848.png]]
# Customizando  Auth
+ Anotação
```c#
[ClaimsAuthorize("Home", "Secret")]
```
+ Criamos uma class para validar as claims do usuário
+ Criamos três classes para customizarmos o processo de autorização
![[📂 Files/Pasted image 20221103153322.png]]
![[📂 Files/Pasted image 20221103153352.png]]

![[📂 Files/Pasted image 20221103154044.png]]

![[📂 Files/Pasted image 20221103154234.png]]

![[📂 Files/Pasted image 20221103154612.png]]

![[📂 Files/Pasted image 20221103154821.png]]
## References
1. 