**Meta data**
Note-type:: #LiteratureNote 
Note-Status:: #PermanentNotePending  
Tags:: 

# BK Academy - Aula 17.10.2022

O operador like em sql pode ser utilizado para comparar o valor de uma coluna com o valor de uma padrão informado; 
Podemos utilizar uma especíe de estrutura de regex para informar esse padrão; 
Temos como caractere coringa multicaracter o % e unicaractere o \__

Para especificar uma conjunto de caractere permitidos podemos utilizar a sintaxe de [], informando os caracteres ou intevalo de caracteres. Ex: 
"[Aa]%" --> Qualquer palavra que começe com A ou a
"[A-H]%" -> Qualqeur palavra que começe com uma letra de A a H (maiúscula)
Podemos utilizar o caracter de negação ^ para informar que desejamos o contrário 
"[\^Aa]%" --> Qualquer palavra que não começe com A ou a

Para especificar um caractere de escape podemos utilizar a sintxe
```sql
WHERE comment LIKE '%30\%%' ESCAPE '\'
```
Note que queremos que o % seja considerado no padrão de comparação, então colocamos um caractere de espace para que ele seja considerado como caracterer de comparação válido e não como um caractere coringa.

Com o operador in podemos verificar se um valor de uma coluna está contido em um intervalo de valores espeficicados entre (valor1, valor2, ..., valorn)
O intervalo de valores pode ser também um subquery que retorna um série que será utilizada
Caso um coluna tenha um valor nulo, isto pode ser um problema no uso do operador in 
Para resolver a situação podemos utilizar a função COALESCE (Possível_Valor_Nulo, Valor_troca_Caso_Nulo)

Podemos dar um nome das as colunas através do operador as (alias)
Caso o nome contenha espaços deveremos utilizar " "

O operador Join configura um correspondência de igualdade entre duas tabelas. 
Caso queremos somente os valores de ambas as tabelas que possuem exata correspodência devemos utilzar o inner join
Se queremos trazer os valores da tabela da esquerda, mesmo aquelas que não tem correspondência, e aqueles que possuem, devemos utilizar o left join

Para escolher certa quantidade de tuplas de uma query podemos adicionar a frente da diretiva select o TOP n para pegar somente as n primeiras tuplas da query

Para que possamos pegar apenas valores distitos, ou únicos de uma tabela devemos utilizar o operador DISTINCT depois do select

Podemos combinar queries com o operador union. Se queremos remover as duplicatas devemos utilizar o union e para trazer tudo o union all

Para ordenas um resultado de uma query devemos utilizar o operador order by passando em seguida a ordem de ordenação e seu respectivo tipo ASC ou DESC, separados por vírgula

# References
1. [[🗃️  Zettel's/💡 Fleeting Notes/Aula 17.10.2022 - BK Academy]]