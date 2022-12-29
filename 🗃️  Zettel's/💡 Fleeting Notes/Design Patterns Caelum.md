**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 27-12-2022
Created-time:: 09:36
Liteturature-Note:: [[🗃️  Zettel's/Literature Notes/Design Patterns Caelum]]
Tags:: 

# Design Patterns Caelum

# Problemas
+ Classes / métodos gigantes
+ Excesso de ifs
+ Códigos difíceis de ler
+ Dificuldade de manutenção
+ Falta de manutenção
	+ Programando sem pensar em escalabilidade
> Design Patterns
> 	Soluções elegantes para problemas do dia a dia

## Problema: 

```C#
public class Orcamento
{
	public double Valor {get; private set;}
	public Orcamento (double valor)
	{
		Valor = valor; 
	}
}

public class CalculadorDeImpostos
{
	public void RealizaCalculo(Orcamento orcamento)
	{
		if("ICMS".Equals(imposto))
			double icms = orcamento.Valor * 0.1; 
		else if("ISS".Equals)
			double iss = orcamento.Valor * 0.06; 
		...
	}
}
```
## Solução
```C#
public interface IIposto{ double Calcula(Orcamento orcamento); }
public class ICMS : IImposto
{
	public double Calcula(Orcamento orcamento) => Orcamento.Valor * 0.1; 
}
public class ISS : IImposto
{
	public double Calcula(Orcamento orcamento) => Orcamento.Valor * 0.06; 
}

public class CalculadorDeImpostos
{
	double RealizaCalculo(Orcamento orcamento, IImposto imposto) =>
		imposto.Calcula(orcamento)
}

```
+ Classe coesa
	+ Tem uma responsabilidade específica
> Strategy
> 	Uma interface e várias implementações ou estratégias.
> 	Sistema age de forma genérica em cima da interface
> 	Polimorfismo

+ Devemos entender a motivação por tráz de um design pattern e o problema que ele resolve

> O padrão Strategy é muito útil quando temos um conjunto de algoritmos similares, e precisamos alternar entre eles em diferentes pedaços da aplicação.

## Chain of Responsability
+ Várias regras de negócio com diversas condições de aplicação
## References
1. 