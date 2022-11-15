**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending
Tags:: 
Created:: 31-10-2022 06:11
# Introdução  à Ciência da Computação

+ Unidade de controle
+ Unidade Funcional
+ Memória
	+ Principal 
	+ Secundária
	+ Quando uma informação armazenada na memória secundária precisa ser trabalhada uma cópia é feita na mémoria principal para que seja levada ao processador
+ Unidade de entrada
+ Unidade de Saída
## Natureza das informações em um computador
+ A únidade básica de uma informação em um computador é 1 bit, que representa dois estados 0 ou 1; 
+ Com esse tipo de informação básica podemos trabalhar com o sistema binário para representar de forma mais concreta números e outras informações
+ A forma como a informação é armazenada dependete do meio em qual queremos armazenar. 
	+ Em meios eletrônicos, as informações são armazenadas em **flip-flops**; 
		+ Este último tem dois terminais de saída e pode ser observado em 3 momentos
			+ Sem passagem de corrente elétrica --> Valor nulo
			+ Alta tensão --> 1
			+ Baixa tensão --> 0; 
	+ Em meios magnetizados
		+ Várias trilhas compostas de diversas estruturas lineares de minúsculos pedaços de uma substância magnética; 
		+ A identificação do bit se dá pela observação de pedaços magnetizados adjacentes
			+ Sintidos opostos --> 1; 
			+ Sentidos iguais --> 0;
	+ Em meios opticos
		+ Semelhante ao meio magnético com trilhas, mas composto por picos e vales onde uma lazer é ligado para ser observada a alteração da angulação do raio incidênte, que é difente para picos e vales
		+ picos e vales adjacentes --> 0; 
		+ picos alternados por vales --> 1; 
+ Memória principal, memória cache e registradores são basicamente concatenações de flip-flops
+ Outra importante unidade de armazenamento de informações é o byte, que é basicamente um conjunto de 8 bits; 
+ Computadores atuais são programados para ter a capacidade de variar seu endereçamento, ora trabalhando com palavras de 1, 2, 4, 8 btyes; 
> Como o que é armazenado em um computador se resume em 0's e 1's o programa que vai trabalhar com essas informações precisa saber previamente a natureza da informação armazenada em determinado lugar para que ele possa trata-la de maneira correta e efetiva com o correto decodificador.; 

> Em unidades computacionais, os prefixoios kilo e mega não correspondem a unidades tradicionais do sistema decimal ($10^3 \ e \ 10^6$), mas sim a $2^{10} \ e \ 2^{20}$, respectivamente 1024 e 1.048.576
## References























