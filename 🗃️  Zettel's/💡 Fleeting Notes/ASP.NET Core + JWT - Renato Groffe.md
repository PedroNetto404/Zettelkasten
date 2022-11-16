---
note-type: #Zettel/NoteType/Fleeting 
note-status: #Zettel/Status/Pending 
media-type: 
date: 13-10-2022 13:44
tags:
---
#  ASP.NET Core + JWT - Renato Groffe
+ Prática difundida visando acesso seguro a API's; 
+ Tokens criptografados para liberar a utilização de recursos de uma API
	+ Técnica recebeu o nome de [[Bearer Authentication]]; 
## JWT
+ Json Web Tokens assinados digitalmente
	+ Contém informações úteis para autenticação
+ Usuário manda uma requisição solicitando e assisamos as autenticação com nossa chave privada; 
### Como funciona o fluxo
1. Usuário manda requisição a API pedindo acesso; 
2. Assinamos com nossa chave privada; 
3. Pessoa com chave pública consegue descriptogravar a menssagem
![[📂 Files/jwt-1024x704.png]]
![[📂 Files/1 IqAodJn46th31XLkU5Qf1w.jpeg]]

### Como funciona o JWT por dentro
#### Header
```json
{
	"alg": "HS256", 
	"typ": "JWT" 
}
```
#### Payload
```json
{
	"sub": "1234567890", 
	"name": "John Doe", 
	"iat": 1516239022
}
```
Passamos todos os detalhes aqui; 
Quais categorias de acesso a API?
#### Verify Signature
```js
HMACSHA256(
	base64UrlEncode(header) + "." +
	base64UrlEncode(payload), 
	your-256-bit-secret
)
```

> Quando fazemos um request para pegar a autenticação do usuário, voltamos do identityServer com o token.
> Assim colocamos o token no header da requisão para API

### O que precisamos implementar para trabalhar com  jwt: 

## References
1. [[📂 Files/ASP.NET Core + JWT - Renato Groffe.pdf]]
2. [[📂 Files/Exemplo implementacao DOTNET 3.0.pdf]]