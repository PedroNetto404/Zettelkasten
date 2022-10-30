#  Intrudução
----
**Type:** #FleetingNote
**Topics:** #Segurança #Autenticação
**Related:** 
**created:** 11-10-2022 13:39

----
# O que é o IdentityServer4
IdentityServer4 é um framework que implementa os Protocolos OpenID Connect e OAuth 2.0 para ASP.NET Core; 
Controle de acesso para api's
Componentes disponíveis no NuGet;
Altamente customizável; 
OpenSource;
Não se limita ao ASP.NET Identity para controle de usuários, podendo usufruir de outros provedores
## Single Sign-On
Esquema de autenticação que permite ao usuário logar no sistema atraves das suas credinciais de acesso e compartilhar essas credenciais através de outros sistemas correlacionados
## Federation Gateway
Processo de login através de um provider externo; 
O protocolo OpenID Connect é o mais utilizado
![[📂 Files/Pasted image 20221011135030.png]]
## Single Sign-out 
Traduzido do inglês-

Single sign-on é um esquema de autenticação que permite que um usuário efetue login com um único ID em qualquer um dos vários sistemas de software relacionados, mas independentes. O verdadeiro single sign-on permite que o usuário efetue login uma vez e acesse os serviços sem reinserir os fatores de autenticação. [Wikipedia (inglês)](https://en.wikipedia.org/wiki/Single_sign-on)
Logout integrado
Desconecta inclusive no identityServer
![[📂 Files/Pasted image 20221011135502.png]]
## JWT
### Parâmetros
Oferecem recursos para validar o usuário
Os jwt's gerados pelo IdentityServer possuem:
Quando um client é direcionado a um servidor de autenticação ele precisa dizer quais escopos o usuário pode acessar 
O IdentityServer não oferece recursos nativos para controlar se um usuário pode ou não ter acesso a api
	É através das claims presentes no JWT que a api tem a capacidade de decidir se aquele usuário tem permissão ou não para realizar a requisição
#### Audience
+ Api que o JWT tem acesso
#### Scopes
+ A API deve ter pelo menos um escopo de acesso; 
+ Quais ações que esse jwt pode realizar na API

A responsabilidade de validar a usuário é da API
	JWT contém informações do usuário através de claims
![[📂 Files/Pasted image 20221011152443.png]]

# ASP.NET Identity
+ COmplementa o IdentityServer4; 
+ objetivo de gerenciar usuários
+ IdentityServer controla as API's e o ASP.NET Identity é para gerenciar nossos usuários
Componente que possui funções, métodos e recursos  para o gerenciamento de usuários
O IdentityServer precisa saber quem é o usuário
	Ele não possui essa feature, terceirizando essa funcionalidade

# Pros e contras do IdentityServer
Customizável
	![[📂 Files/Pasted image 20221011165344.png]]
## References
1. 