#  Padrão MVC
----
**Type:** #FleetingNote
**Topics:**
**Related:**
**created:** 11-10-2022 20:29

----
![[📂 Files/Pasted image 20221011202920.png]]
+ É um padrão arquitetural != de um estilo arquitetural
	+ No padrão arquitetural, aplicamos um padrão em cima de uma arquitetura existente
		+ criamos uma arquitura que trabalha com o padrão MVC
+ Separação das responsabilidades 


## Fluxo
Uma requisição http é disparada pelo browser. Pela rota identificamos qual método de determinado controller deve ser acionado. O método do controller realiza o processamento (populando uma model com dadas do banco) e pode ou não retornar uma view. 
O controller popula tanto a model quanto view. 
![[📂 Files/Pasted image 20221011204014.png]]
## References
1. 