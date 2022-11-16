**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 15-11-2022
Created-time:: 18:59
Liteturature-Note:: 
Tags:: 

# Capítulo 10 - Subqueries
Podemos realizar buscas aninhadas
Recurso extremamente útil do comando select
Na prática colocamos um select dentro de outro
## Sintaxe
![[📂 Files/Image/Pasted image 20221115190118.png]]                                                                                                                                                                                                                                                                            
Também podemos utilizar uma subquerie dentro da cláusula having

## Temos 3 tipos de subqueries
### Retorno de 1 uma linha
![[📂 Files/Image/Pasted image 20221115190726.png]]
![[📂 Files/Image/Pasted image 20221115191002.png]]
Primeiro é feito uma busca na tabela e utilizamos o valor de retorna para realizar outra busca
### Retorno de múltiplas linhas
### Retorno de múltiplas colunas
Retorno contendo mais de uma linha e coluna
## Para utilizar subqueries devemos ter em mente que
+ Devemos colocar subqueries entre parênteses
+ Subquerie a diretia do operador
+ Não devemos utilizar um order by numa subquerie, pois toda instrução select tem apenas um e ele deve ser colocado na instrução mais externa
+ Devemos utilizar operadores de linha apenas em resultados que retornam uma uníca linha
+ Devemos usar operadores de grupo apenas em retornos múltiplos

![[📂 Files/Image/Pasted image 20221115191445.png]]


## References
1. 