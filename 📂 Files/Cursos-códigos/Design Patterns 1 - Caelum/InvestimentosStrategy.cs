public class Conta
{
    public double Saldo { get; private set; }
    public void Deposita(double valor)
    {
        this.Saldo += valor;
    }
}
public interface Investimento
{
    double Calcula(Conta conta);
}

public class Conservador : Investimento
{
    public double Calcula(Conta conta)
    {
        return conta.Saldo * 0.008;
    }
}

public class Moderado : Investimento
{
    private Random random;
    public Moderado()
    {
        this.random = new Random();
    }
    public double calcula(Conta conta)
    {
        if(random.Next(2) == 0)
            return conta.Saldo * 0.025;
        else
            return conta.Saldo * 0.007;
    }
}

public class Arrojado : Investimento
{
    private Random random;

    public Arrojado()
    {
        this.random = new Random();
    }
    public double calcula(Conta conta)
    {
        int chute = random.Next(10);
        if(chute >= 0 && chute <= 1) return conta.Saldo * 0.5;
        else if (chute >= 2 && chute <= 4) return conta.Saldo * 0.3;
        else return conta.Saldo * 0.006;
    }
}

public class RealizadorDeInvestimentos
{
    public void Realiza(Conta conta, Investimento investimento)
    {
        double resultado = investimento.Calcula(conta);
        conta.Deposita( resultado * 0.75 );
        Console.WriteLine ( "Novo saldo: " + conta.Saldo);
    }
}