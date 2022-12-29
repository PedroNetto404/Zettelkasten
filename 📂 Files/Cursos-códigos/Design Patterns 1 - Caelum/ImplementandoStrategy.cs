public class Item
{
    public string Nome {get; private set;}
    public double Valor {get; private;}

    public Item(string nome, double valor)
    {
        Nome = nome;
        Valor = valor;
    }
}
public class Orcamento
{
    public double Valor {get; private set;}
    public IList<Item> Itens {get; private set;}

    public Orcamento(double valor)
    {
        Valor = valor;
        Itens = new List<Itens>();
    }
    public void AdicionarItem(Item item) => Itens.Add(item);
}

public interface Imposto
{
    double Calcula(Orcamento orcamento);
}

public class ICMS : Imposto
{
    double Calcula(Orcamento orcamento)
    {
        return orcamento.Valor * 0.05;
    }
}

public class ISS : Imposto
{
    public const doble VALOR_FIXO = 50;
    double Calcula(Orcamento orcamento)
    {
        return orcamento.Valor * 0.06 + VALOR_FIXO;
    }
}

public class ICCC : Imposto
{
    public Calcula(Orcamento orcamento)
    {
        if(orcamento.Valor <= 0) throw new ArgumentException("Valor inconsistênte");
        if(orcamento.Valor < 1000) return orcamento.Valor * 0.05;
        else if(orcamento.Valor >= 1000 && orcamento.Valor <= 3000) return orcamento.Valor & 0.07;
        else return orcamento.Valor * 0.08 + 30
    }
}

public class CalculadorDeImposto
{
    public double RealizaCalculo(orcamento, Imposto)
    {
        return imposto.Calcula(orcamento);
    }
}

public interface Desconto
{
    Desconto ProximoDesconto {get; set;}
    double Desconta(Orcamento orcamento);
}

public class DescontoPorCincoItens : Desconto
{
    public Desconto ProximoDesconto {get; set;}

    public DescontoPorCincoItens(Desconto desconto)
    {
        ProximoDesconto = desconto;
    }

    public double Desconta(Orcamento orcamento)
    {
        if(orcamento.Itens.Count > 5)
            return orcamento.Valor * 0.1;

        return ProximoDesconto.Desconta(orcamento);
    }
}

public class DescontoPorMaisDeQuinhentosReais
{
    public Desconto ProximoDesconto {get; set;}

    public DescontoPorMaisDeQuinhentosReais(Desconto desconto)
    {
        ProximoDesconto = desconto;
    }

    public double Desconta(Orcamento orcamento)
    {
        if(orcamento.Valor > 500)
            return orcamento.Valor * 0.07;

        return ProximoDesconto.Desconta(orcamento);
    }
}

public class SemDesconto : Desconto
{
    public Desconto ProximoDesconto {get; set;}
    public double Calcula(Orcamento orcamento)
    {
        return 0;
    }
}

public class CalculadorDeDescontos
{
    public double Calcula(Orcamento orcamento)
    {
    }
}

public void Main(String[] args)
{
     new CalculadorDeImposto().RealizaCalculo(new Orcamento(5000), new ICCC())
}