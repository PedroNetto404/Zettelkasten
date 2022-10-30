# Método de Newton
created:: 03-10-22 10:05
status:: #zettel/fleeting
tags:: #learning/matemática/cálculo

people:: 

### A ideia
A ideia do Método de Newton é calcular a solução de uma função a partir de uma série que converge para o valor da solução. 
Dado um ponto qualquer no domínio de $f$


Reta tangente no ponto $(x_0, f(x_0))$

$x_0  \rightarrow chute \ inicial$
$y = f'(x_0)(x - x_0) +f(x_0)$

Igualando a 0 e isolando x: 

$x = x_0 - \frac{f(x_0)}{ f'(x_0)}$

Assim, temos a sequência: 

$x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}$

Vamos considerar uma precisão $\epsilon$
Assim, nossa condição de parada será considerada a partir do erro relativo: 

> $|\frac{x_{k+1} - x_k}{x_{k+1}}| < \epsilon$
## References
2. [[Reta Tangente]]
