**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 15-11-2022
Created-time:: 15:44
Liteturature-Note:: 
Tags:: 

# Funções de grupo e agrupamentos
+ Funções de grupo operam sobre conjuntos de linhas visando fornecer um resultado para o grupo. 
![[📂 Files/Image/Pasted image 20221115154530.png]]

## COUNT
+ Diferente das outras funções de grupo, o cout retorna o número de linhas que atendem a uma determinada condição. 
+ COUNT(\*)
	+ Indicamos que queremos saber a quantidade total de linhas, independente de haver colunas nulas ou não
	+ Para saber quais linhas não tem valor nulo para uma determinada coluna, basta que informemos o nome da coluna entre parênteses
		+ SELECT COUNT(Endereco) FROM Gravadora
			+ 4 linhas da tabela gravadora que tem a coluna Endereco não nula
			+ O mesmo efeito pode ser observado pelo comando
				+ SELECT COUNT(\**) FROM Gravadora
				+ WHERE Endereco is not null
	+ Para sabermos a quantidade de registro unicos e exclusivos em uma tabela podemos utilizar a palavrra chave DISTINCT antes da tabela informada nos parênteses do COUNT
![[📂 Files/Image/Pasted image 20221115155354.png]]
## SUM
+ Retorna o valor total de uma determinada coluna em um determinado grupo de linhas
+ ![[📂 Files/Image/Pasted image 20221115155506.png]]
+ Podemos realizar outros cálculos baseados na somátória ou mesmo incluir outras colunas e operações no comando
	+ ![[📂 Files/Image/Pasted image 20221115155621.png]]
## AVG
+ Média aritmética de um determinado grupo de linhas 
![[📂 Files/Image/Pasted image 20221115155713.png]]
## MIN
+ Retorna o menor valor de uma coluna em um grupo de linhas podendo ser utilizado para colunas do tipo data ou alfanuméricas
![[📂 Files/Image/Pasted image 20221115155823.png]]
![[📂 Files/Image/Pasted image 20221115155842.png]]
## MAX
+ Equivalente ao min, porém para o maior valor
![[📂 Files/Image/Pasted image 20221115155931.png]]
## STDDEV
+ Retorna o desvio padrão de uma determinada coluna
![[📂 Files/Image/Pasted image 20221115160052.png]]
## Retorna a variância de uma determinada coluna
 ![[📂 Files/Image/Pasted image 20221115160122.png]]
 ## Conversão de tipos de dados
 ### Função CAST
![[📂 Files/Image/Pasted image 20221115160212.png]]
+ Por exemplo, se queremos exibir um valor decimal com várias casas em apenas um número decimal de duas, basta utilizar o CAST da seguinte forma
+ ![[📂 Files/Image/Pasted image 20221115160326.png]]
+ Ex2: Conversão de alfanumérico para data 
+ ![[📂 Files/Image/Pasted image 20221115160430.png]]
+ Ex3: Alfanumérico para valor numérico
![[📂 Files/Image/Pasted image 20221115160459.png]]

## Agrupando resultados
Uma característica muito importante do SQL é o poder de agrupar linhas com base em valores de determinadas colunas
	Podemos trabalhar na pesquisa não em todas as linhas da tabela, mas sim em grupos menores dela.
Group by
	Utilizada no comando SELECT
	Deve vir antes da cláusula Order by e depois da where (se houver necessidades de utilizá-los)
![[📂 Files/Image/Pasted image 20221115160942.png]]
	Coluna
		Lista de colunas pela qual se quer agrupar (deve haver correspondência à mesma sequência da cláusula Group by)
	Funcão de grupo
		COUNT, SUM, AVG, MIN ou MAX
![[📂 Files/Image/Pasted image 20221115161341.png]]
![[📂 Files/Image/Pasted image 20221115161538.png]]
![[📂 Files/Image/Pasted image 20221115161735.png]]
## Agrupamento com mais de uma tabela
![[📂 Files/Image/Pasted image 20221115162029.png]]
Devemos colocar todas as colunas que fazem parte do comando select na cláusula GROUP BY, exceto, naturalmente, a função de grupo. 
	Não é obrigatório, contudo, a utilização das colunas da cláusula GROUP BY no comando select
		Não precisamos necessariamente projetar as colunas que queremos agrupar.
		É aconselhável utilizar a coluna no comando select para facilitar o entendimento do resultado da busca
	![[📂 Files/Image/Pasted image 20221115162410.png]]
	Note que queriamos apenas agrupar as tupllas por codigo de gravadora e para o conjunto de tuplas de cada grupo calcular a média e a quantidade de tuplas

### Ordenando os resultados
![[📂 Files/Image/Pasted image 20221115162620.png]]
O Resultado da busca pelas colunas que foram alvo da função de grupo pode ser ordenado. 
![[📂 Files/Image/Pasted image 20221115164238.png]]
### Restringindo resultados
Os resultados dos dados agrupados podem ser restritos
	Utilizando Where em conjunto com o group by
	Utilizando o having 
![[📂 Files/Image/Pasted image 20221115165205.png]]
De maneira análoga
![[📂 Files/Image/Pasted image 20221115165256.png]]
Tempo de execução muito parecido e com o mesmo resultado (considerando um conjunto pequeno de dados)
Ao utilizarmos a cláusula where
	linhas filtradas antes do agrupamento
Com having
	Linhas filtradas depois do agrupamento
Invalidando o having
![[📂 Files/Image/Pasted image 20221115165503.png]]
Uso correto
![[📂 Files/Image/Pasted image 20221115165543.png]]
Única restrição
	Having só pode ser utilizado com colunas que estão no group by
	Para where não temos esse problema
##### Quando usar where, having ou ambos
###### 1 Having
Maior parte das linhas devem fazer parte do agrupamento
Dados devem ser mostrados para a maior parte dos grupos
	Busca será mais eficiente se os grupos forem formados primeiro e depois filtrados
###### 2 Where
+ Buscar será realizada na menor parte das linhas 
	+ Melhor filtra primeiro e depois agrupar.
##### Nunca devemos usar uma função de grupo para realizar alguma busca
###### Exemplo de comando inválido 
![[📂 Files/Image/Pasted image 20221115175004.png]]
Note que a cláusula where é aplicada a cada tupla da fonte de dados informada. Se utilizarmos um uma função de grupo em  um cláusula where estaríamos em tese aplicando o filtro em tuplas que não existem, visto que não foi feito nenhum agrupamento, já que a coluna Codigo_gravado foi somente projetada e não agrupada.
###### Exemplo de comando válido
![[📂 Files/Image/Pasted image 20221115175241.png]]

# 10 - Subquerys

## References
1. 