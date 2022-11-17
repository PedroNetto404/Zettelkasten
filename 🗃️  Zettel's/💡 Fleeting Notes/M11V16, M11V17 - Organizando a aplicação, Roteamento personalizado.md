**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Note-Sync:: false
Created-date:: 16-11-2022
Created-time:: 12:14
Liteturature-Note:: 
Tags:: 

# M11V16 - Organizando a aplicação

A ideia é organizarmos o nosso código em pastas que representem o nosso intuito. Um exemplo, seria criar uma pasta de configurações para ajustes gerais tais como injeção de dependência e outros;

## Configurando appsettings por ambiente
![[📂 Files/Image/Pasted image 20221116122451.png]]
![[📂 Files/Image/Pasted image 20221116122523.png]]
![[📂 Files/Image/Pasted image 20221116122642.png]]
# Criando uma TagHelper personalizada
![[📂 Files/Image/Pasted image 20221116122902.png]]
Basta que herdemos da classe TagHelper e sobreescrevemos o método ProcessAsync.
Dentro do método podemos definir qual a tag de saída e manipular seu valor e as características da tag
![[📂 Files/Image/Pasted image 20221116123245.png]]
Para utilizar a taghelper que criamos basta colocarmos o namespace da classe na _ViewImports_

# Roteamento personalizado
+ Recurso route atribute
+ Com o atributo Route podemos personalizar o roteamento a nossa aplicação
+ Podemos colocar o um atributo na classe do controller para colocar um prefixo nas rotas do métodos
## Definindo o datatype de um parâmetro
![[📂 Files/Image/Pasted image 20221116124136.png]]

# Realizando validação do domínio

+ Fluent Validation 
+ Alimentando a model de uma view com os erros
+ ![[📂 Files/Image/Pasted image 20221116132103.png]]
# Implementando a segurança com o identity
+ Configuramos as claims para o Id do usuário na tabela
+ ![[📂 Files/Image/Pasted image 20221116134344.png]]
+ Para verificar se o usuário está autenticado e se possui a claim
+ ![[📂 Files/Image/Pasted image 20221116134632.png]]
+ Para Realizarmos um direcionamento personalidado para o usuário, podemos criar um filtro de autorização e direcionado para uma determinada página ou para a própria área do identity
![[📂 Files/Image/Pasted image 20221116134827.png]]

Note na imagem que quando é temos um método OnAuthorization que é executado no momento da authorização da request
A partir do contexto AuthorizationFilterContext acessamos
	HttpContext
		User
			Identity
				Propriedade IsAuthenticated
					Caso o usuário não esteja autenticado essa propriedade estará como false
					Se false, apenas o redirecionamentos para a página de login
Caso o usuário esteja autenticado validamos as claims através do objeto Claim que foi injetado no construtor através de injeção de dependência
	Caso o usuário não tenha a claim
		Atribuimos uma nova instância de StatusCodeResult (403) ao resultado do contexto http
			context.Result = new StatusCodeResult(403)
## Restrição de acesso
+ Anotamos o controller com o atributo Authorize
+ Métodos que devem ser permitidos devem ser anotados com 
	+ AllowAnonymous
### Desabilitar compontentes da view com base nas claims do usuário
![[📂 Files/Image/Pasted image 20221116195306.png]]
Ao utilizarmos a tag helper "supress-by-claim-name" suprimimos a exibição de um componentes com base nas claims do usuário. 
	Podemos informar tanto o nome da claim quanto o valor. 
Se quiser apenas desabilitar algum componente, como um botão, basta utilizarmos a tag helper disable-by-claim-name 

Esses atributos foram criados a partir de uma classe que herda de tag helper
Devemos anotar em cima da classe especificando quais tags html podem ser utilizadas e qual será o nome do atributo
```C#
namespace Atributo; 

[HtmlTargetElement("*", "supress-by-claim-name")]
[HtmlTargetElement("*", "supress-by-claim-value")]
public class ApagaElementoByClaimTagHelper : TagHelper
{
	//Meio de acessar o contexto via http
	private readonly IHttpContextAcessor _contextAcessor;
	[HtmlAttributeName("supress-by-claim-name")]
	public string IdentityClaimName {get; set}
	
	[HtmlAttributeName("supress-by-claim-value")]
	public string IdentityClaimValue {get; set;}
								//Aquilo que estamos recebendo na tag helper //Aquilo que será produzido, saída
	public override void Process(TagHelperContext context, TagHelperOutput output)
	{
		if(context == null) throw new ArgumentNullException(nameof(context)); 
		if(context == null) throw new ArgumentNullException(nameof(output));

		var temAcesso = CustomAuthorize.ValidarClaimsUsuario(_contextAccessor, IdentityClaimName, IdentityClaimValue);

		if(temAcesso) return; 

		output.SuppressOutput(); 
	}

}
```
# Adendo: O que são cookies
+ De forma bem básica cookies são informações que são enviadas do servidos para o browser, que salva essas informações localmente. A partir desse momento, antes de enviamos uma requisição para esse site / servidor, nosso browser procura os cookies correspondentes e enviar junto a request.
+ Arquivo de texto simples vinculado a um saite específico
	+ Cliente permite que esse site leia as informações armazenadas em requisições subsequentes, permitindo que o servidor (ou até mesmo o próprio cliente) armazene dados para uso posterior.
```c#
var cookieOptions = new CookieOptions  
    {  
          HttpOnly = true,  
          Expires = DateTime.UtcNow.AddHours(2),  
     };  
  
     Response.Cookies.Append("jwtCookie", 'valor', cookieOptions); 
```
No exemplo acima criamos uma configuração de cookie onde desabilitamos a possibilidade de ele ser acessado por um script do lado do cliente (HttpOnly = True) e definimos um prazo de expiração ou validade do cookie. 
Com o cookie configurado,  adicionamos a response o nome e valor do cookie seguido do objeto que representa a configuração.
Para recuperarmos os dados nas próximas requisições
```c#
var jwt = Request.Cookies["jwtCookie"]
```
Dentro de uma request temos uma coleção de chave/valor que representam os cookies que o usuário está enviando em conjunto com a request Http
Classe Cookie Options
	Nos permite ajustar aspectos de como nossos cookies se comportam
	CookieOptions.Expires
		Por Defaul
			Cookie de sessão
			Só existe enquanto o browser estiver aberto
			Quando o browser é fechado o cookie e deletado
		É uma variável para um objeto do tipo DateTimeOffset
	CookieOptions.Domain
		Por Default
			Cookie definido para o domínio que foi feita a solicitação
				pagina acessada pelo domínio "meuwebsite.com" o cookie será definido para o domínio "meuwebsite.com"
				Se a página for acessada para outro subdomínio, este subdomínio será usado. 
				para definir a propriedade Domain para o domínio-base do nosso site, devemos prefixar com um ponto
					"cookieOptions.Domain = ".meuwebsite.com""; 
	CookieOptions.Path
		Por Default
			Definido como "/"
				Cookie válido para todas as pastas / diretórios
		Podemos definir a validade de um cookie para áreas específicas da nossa aplicação definindo um path personalizado
	CookieOptions.HttpOnly
		Indica se o cookie pode ser acessado por script do lado do cliente
		Definindo como true estamos mitigando o risco de o script do lado do cliente acessar o cookie protegido
	CookieOptions.IsEssential
		Indica se o cookie é essencial para que o aplicativo funcione corretamente
		Se true 
			verificações de politicas de consentimento podem ser ignoradas
		Por default é false;
		Para configurar as politicas de consentimento configuramos a criação do objeto CookiePolicyOptions
			```C#
			services.Configure<CookiePolicyOptions>(options => {
				options.CheckConsentNeeded = context => true;
				options.MinimunSameSitePolicy = SameSiteMode.None;
			})
			```
			Podemos tanto configurar esse comportamento ou definir a propriedade IsEssential como true
				```c#
				var options = new CookieOptions  
				{  
				    Expires = DateTime.Now.AddMinutes(60),  
				    IsEssential = true  
				};

				Response.Cookies.Append("cookieAgressivo", "Quem manda aqui sou eu...", options);
				```
## References
1. 