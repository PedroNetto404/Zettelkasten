#  Segurança de APIs
----
**Type:** #FleetingNote
**Topics:**
**Related:**
**created:** 11-10-2022 17:00

----
# Contexto histórico
## Evolução da segurança em API's 
### 2005
#### SAML 2P
Enviava o usuário para algum lugar e desse lugar era redirecinado de volta repassando o token de  acesso
Acesso completo a conta do usuário; 
Após fornecer o acesso um serviço, a única maneira de revogar a senha seria altera-lá
![[📂 Files/Pasted image 20221011171718.png]]

### Atualmente
#### OAuth 2.0
+ Tem muita força no mercado
+ Padrão mais utilizado para proteção de API's
+ Base para o OpenId Connect; 

# Enterprise Security
![[📂 Files/Pasted image 20221011172830.png]]
![[📂 Files/Pasted image 20221011173117.png]]

# Autorização de API
## Monolito
+ Um único programa
+ Única plataforma; 
+ Estrutura complexa com o tempo; 
+ Diversas funcionalidades; 
+ Componentes organizados entre si; 
+ Uma única Solution
## Microsserviços / Baseados em serviços
+ API's indenpendentes
+ Organizado em torno das capacidades de negócio
+ Mantigo por um pequeno time; 
+ Desacoplado
+ ![[📂 Files/Pasted image 20221011174101.png]]
## Credential Sharing
+ Não é uma solução atualmente viável
+ Quando compartilhamos nossas credenciais de acessos um serviço externo a nossa aplicação em troca de um benefício
### Usuário e Senha
+ Impersonate
+ Attack Surface
+ Phishing
+ Senha Reversível; 
+ Nível de acesso completo

## Cookies
+ Vulnerável a Cross Site Request Forgery
+ Geralmente utilizamos cookies quando temos apenas um único domínio e com uma única API
	+ Emissão do cookie fica a cargo do ASP.NET Core
## JWT
+ Alternativa ao cookie
+ Applicação se defende de ataques CSRF
+ Vulnerável ataques XSS
	+ Possibilidade de rouba o JWT do usuário
	+ Devemos escolher um algoritmo de criptografia do JWT
		+ Simétrico ou assimétrico
			+ Chave simétricas em sistemas monolitos; 
			+ Chave assimétrica
## API Keys
+ Boa solução e ainda hoje bem comum; 
+ Usuário deve criar uma chave de API; 
	+ Para que o serviço tenha acesso a uma determinada API através dessa chave; 
	+ É possível configurar o nível de permissão dessa key limitando o uso e escop; 
	+ Possibilidade de trocar ou alterar a key

## OAuth 2.0
+ Framework de autorização; 
+ Desenvolvido especificamente para proteger API's HTTP; 
+ Protocolo mais seguro para a proteção de apis; 
+ Permite que o usuário delegue quais escopos a aplicação deve acessar; 
+ Delegation Protocol
	+ Usuário delega quais informações pessoais podem ser acessadas pelos aplicativosa; 
### Papéis
![[📂 Files/Pasted image 20221011181852.png]]
#### Resource Owner
+ Pessoa ou entidade que concede o acesso aos nossos dados; 
+ Dono do recurso (usuário); 
#### Client
+ Aplicação que interage com o usuário ou um serviço background; 
#### Resource Server
+ API exposta através do protocolo HTTP e contém os dados do usuário; 
	+ Para acessar os dados é necessário de um token emitido pelo Authorization Server. 
#### Authorization Server
+ Servidor OAuth 2.0; 
+ Responsável por emitir token conhecidos como beamer tokens; 
+ Detem informações sosbre o Resource Owner e expoe no formato de claims através do beamer tokens; 
+ Autentica e interage com o usuário após identificar e autorizar o client
+ ![[📂 Files/Pasted image 20221011182127.png]]
+ 
## References
1. 