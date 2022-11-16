**Meta data**
Note-type:: #Zettel/NoteType/Fleeting 
Note-Status:: #Zettel/Status/Done 
Tags::

# Solid na prática
## O que é SOLID? 
+ SOLID é um acrônimo para 5 pricípios para um bom design de código assim como uma boa modelagem técnica de nossas classes. 
+ Os princípios foram identificados por Robert C. (Uncle Bob) por volta do ano 2000. 
## Para que servem?
+ Os princípios SOLID servem para que possamos extrair o máximo dos benefícios da orientação a objetos relativos ao código: 
	+ Facilidade de manutenção
	+ Adaptação às alterações do escopo; 
	+ Testáqvel e de fácil entendimento
	+ Que forneça o máximo de reaproveitamento e que sua utilidade permaneça o máximo de tempo possível; 
	+ Extensível com o menor esforço (Capaz de extender seu comportamento)
+ 
  ## problemas em códigos que não utilizam os princípios SOLID
+ Dificuldade de testabilidade; 
+ Criação de testes de unidade; 
+ Código sem estrutura ou padrão (código macarrônico); 
+ Dificuldade de isolar funcionalidades; 
+ Duplicação de código ou fragilidade de código; 
> Chegar em bons resultados é necessária a utilização de outros princípios e design patterns como Clean Code, Dry, Kiss, Yagni, etc
# # Princípio da Responsabilidade Única — SRP
"Uma classe deve ter um, e apenas um, motivo para ser modificada."
+ Princípio principal do solid, pois todos os outros princípios giram em torno dele; 
+ Não somente uma classe deve ter apenas 1 motivo para ser modificada, mas também métodos, um arquivo ou qualquer objeto deve ter exclusivamente uma responsabilidade, pois assim, terá somente um motivo para ser alterado
## Exemplo de violação: 
```c#
using System;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace Arquitetura.SOLID.SRP.Violacao
{
    public class Cliente
    {
        public int ClienteId { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string CPF { get; set; }
        public DateTime DataCadastro { get; set; }

        public string AdicionarCliente()
        {
            if (!Email.Contains("@"))
                return "Cliente com e-mail inválido";

            if (CPF.Length != 11)
                return "Cliente com CPF inválido";


            using (var cn = new SqlConnection())
            {
                var cmd = new SqlCommand();

                cn.ConnectionString = "MinhaConnectionString";
                cmd.Connection = cn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO CLIENTE (NOME, EMAIL CPF, DATACADASTRO) VALUES (@nome, @email, @cpf, @dataCad))";

                cmd.Parameters.AddWithValue("nome", Nome);
                cmd.Parameters.AddWithValue("email", Email);
                cmd.Parameters.AddWithValue("cpf", CPF);
                cmd.Parameters.AddWithValue("dataCad", DataCadastro);

                cn.Open();
                cmd.ExecuteNonQuery();
            }

            var mail = new MailMessage("empresa@empresa.com", Email);
            var client = new SmtpClient
            {
                Port = 25,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Host = "smtp.google.com"
            };

            mail.Subject = "Bem Vindo.";
            mail.Body = "Parabéns! Você está cadastrado.";
            client.Send(mail);

            return "Cliente cadastrado com sucesso!";
        }
    }
}
```
É de responsabilidade da entidade cliente se validar, mas em relação a validações específicas como CPF e E-mail, o cliente não deveria saber como essas funcionam. O mesmo se aplica a persistencia dos dados. Não é dever do Cliente saber como se salvar no banco; 
Quando uma classe ou um método possuem muitas responsabilidades, caso ocorra alguma falha não iremos saber onde aconteceu
## Exemplo solução
```c#
using System;

using Arquitetura.SOLID.SRP.Solucao;

namespace Arquitetura.SRP.Solucao

{

public class Cliente

{

public int ClienteId { get; set; }

public string Nome { get; set; }

public string Email { get; set; }

public string CPF { get; set; }

public DateTime DataCadastro { get; set; }

public bool IsValid()

{

return EmailServices.IsValid(Email) && CPFServices.IsValid(CPF);

}

}

}
```
+ Como externalizamos  a lógica de Email e CPF em uma classe distinta, a classe cliente apenas consume esses métodos
```c#
using System.Data;

using System.Data.SqlClient;

using Arquitetura.SRP.Solucao;

namespace Arquitetura.SOLID.SRP.Solucao

{

public class ClienteRepository

{

public void AdicionarCliente(Cliente cliente)

{

using (var cn = new SqlConnection())

{

var cmd = new SqlCommand();

cn.ConnectionString = "MinhaConnectionString";

cmd.Connection = cn;

cmd.CommandType = CommandType.Text;

cmd.CommandText = "INSERT INTO CLIENTE (NOME, EMAIL CPF, DATACADASTRO) VALUES (@nome, @email, @cpf, @dataCad))";

cmd.Parameters.AddWithValue("nome", cliente.Nome);

cmd.Parameters.AddWithValue("email", cliente.Email);

cmd.Parameters.AddWithValue("cpf", cliente.CPF);

cmd.Parameters.AddWithValue("dataCad", cliente.DataCadastro);

cn.Open();

cmd.ExecuteNonQuery();

}

}

}

}
```
+ Note que poderiamos melhoras tirando a responsabilidade da classe de repository de obter uma connection string em uma classe mais base, caso futuramente precisarmos modificar o banco; 
```c#
using Arquitetura.SRP.Solucao;

namespace Arquitetura.SOLID.SRP.Solucao
{
	public class ClienteService
	{
		public string AdicionarCliente(Cliente cliente)
		{

			if (!cliente.IsValid())
				return "Dados inválidos";
	
			var repo = new ClienteRepository();
	
			repo.AdicionarCliente(cliente);

			EmailServices.Enviar("empresa@empresa.com", cliente.Email, "Bem Vindo", "Parabéns está Cadastrado");

			return "Cliente cadastrado com sucesso";

		}

	}

}
```

```c#
using System.Net.Mail;

namespace Arquitetura.SOLID.SRP.Solucao
{
    public static class EmailServices
    {
        public static bool IsValid(string email)
        {
            return email.Contains("@");
        }

        public static void Enviar(string de, string para, string assunto, string mensagem)
        {
            var mail = new MailMessage(de, para);
            var client = new SmtpClient
            {
                Port = 25,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Host = "smtp.google.com"
            };

            mail.Subject = assunto;
            mail.Body = mensagem;
            client.Send(mail);
        }
    }
}
```

+ Na classe cliente ainda temos um problema em relação ao acoplamento, pois como dependemos de uma classe estática, caso ela mude a aclasse cliente mudará instantâneamente; 
+ Diminuir o acoplamento é garantir que a classe de cliente irá tratar de assuntos que sejam somente relativos a cliente, desde que essa lógica represente a abstração do mundo real do cliente sem depender de classes que não sejam elas
# Princípio do aberto e fechado - OCP
_O Princípio OCP (Open/Closed) diz que entidades de software sejam elas classes, módulos, funções, etc… devem estar abertas para extensão, mas fechadas para modificação._
+  A ideia é separar a entidades de forma que uma não afete o funcionamento  de outra, deixando as classes abertas para a extensão, mas fechadas para modificações que afetem o funcionamento de outras classes
## Exemplo de violação
```c#
namespace Arquitetura.SOLID.OCP.Violacao

{

public class DebitoConta

{

public void Debitar(decimal valor, string conta, TipoConta tipoConta)

{

if (tipoConta == TipoConta.Corrente)

{

// Debita Conta Corrente

}

if (tipoConta == TipoConta.Poupanca)

{

// Valida Aniversário da Conta

// Debita Conta Poupança

}

}

}

}
```

## References
1.  [# Princípios SOLID na Prática](https://medium.com/@engnogueirawgn/princ%C3%ADpios-solid-na-pr%C3%A1tica-e932608406d6)
2. 