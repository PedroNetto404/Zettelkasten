**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 29-12-2022
Created-time:: 16:36
Liteturature-Note:: [[🗃️  Zettel's/Literature Notes/Mergulhando nos padrões de projeto - Alexander Shvets]]
Tags:: 

# Mergulhando nos padrões de projeto - Alexander Shvets
## O básico de POO
+ Envolver pedaços de dados, e comportamentos relacionados a esses dados, em uma coleção chamada de objetos, que são construídos em um conjunto de "planos de construção", chamados de classes 
+ Dados armazenados dentro dos campos de um objeto representam o estado do objeto
	+ Os Métodos que operam sobre o estado de um objeto definem seu comportamento
+ Objetos são instâncias de classe
+ Classe
	+ Planta de construção de um objeto
		+ Definem a estrutura de um objeto
+ Hierarquia de classes 
	+ Superclasses
	+ Subclasses
		+ Podem sobreescrever o comportamento de métodos que herdam de suas classes parentes
			+ Tanto substituir quanto complementar e melhorar
## Pilares da POO
### Abstração
+ Modelagem dos objetos do programa baseado em objetos do mundo real.
	+ Objetos do programa não representam os originais 100% de precisão
	+ Nossos objetos apenas modelam atributos e comportamentos de objetos reais em um contexto específico, ignorando o resto.
+ ![[📂 Files/Image/Pasted image 20221229171347.png]]

#### Abstração
+ É um modelo de um objeto ou fenômeno do mundo real, limitado a um contexto específico
	+ Representa todos os detalhes relevantes para este contexto com grande precisão e omite o resto
#### Encapsulamento
+ Esconder detalhes de implementação
+ Cada objeto tem uma interface
	+ Parte pública do objeto
		+ Aberto a interação com outros objetos
+ Habilidade de um objeto de esconder parte do seu estado e comportamentos de outros objetos, expondo apenas uma interface limitada para o resto do programa.
+ Intefaces
	+ Contratos de interação entre objetos
![[📂 Files/Image/Pasted image 20221229172729.png]]
#### Herança
+ Habilidade de construir novas classes em cima de classes já existentes
	+ Reutilização de código
	+ Estender uma classse
	+ Mesma inteface que a classe mãe
#### Polimorfismo
+ Habilidade do programa de detectar a classe real de um objeto e chamar sua implementação mesmo quando seu tipo real é desconhecido no contexto atual.
+ Capacidade de um objeto fingir que ele algum outro supertipo ou interface
### Relações entre objetos 
#### Dependência
+ Mais básico e fraco tipo de relações entre classes
+ Existe uma dependência entre clases quando modificações em uma resultam em modificações na outra. 
+ Dependência forte
	+ Classe concreta, instanciamento da classe
+ Dependência fraca
	+ Interfaces e classes abstratas
#### Associação
+ Relacionamento no qual um objeto usa ou interage com outro
#### Agregação
+ ![[📂 Files/Image/Pasted image 20230102133102.png]]
+ Tipo especializado da associação
+ Representa relações individuais (one-to-many), múltiplas (many-to-many) e totais (whole-part) entre múltiplos objetos. 
+ Um objeto tem dentro de si um conjunto de outros objetos
	+ Server de container ou coleção
#### Composição
![[📂 Files/Image/Pasted image 20230102133534.png]]
+ Tipo específico da agregação
	+ Um objeto é composto de um ou mais instâncias de outro
+ O componente só pode existir como parte de um contêiner
+ ![[📂 Files/Image/Pasted image 20230102133751.png]]
+ ![[📂 Files/Image/Pasted image 20230102133759.png]]
+ ![[📂 Files/Image/Pasted image 20230102133816.png]]
# Introdução aos padrões
## O que é um padrão de projeto
+ Soluções típicas para problemas comuns de projeto de software; 
+ Plantas de obras pré fabricadas que podemos customizar para resolver um problema de projeto recorrente em nosso código; 
+ Conceito geral para resolver um problema em particular
+ Descrição de alto nível de uma solução
## Componentes de um padrão
### Propósito
+ Descreve brevemente o problema e a solução
### Motivação
+ Explica a fundo o problema e a solução que o padrão torna possível
### Estruturas de Classes
+ Mostram cada parte do padrão e como se relacionam
## Classificação dos padrões
### Padrões criacionais
+ Fornecem mecanismos de criação de objetos que aumentam a flexibilidade e a reutilização de código
### Padrões estruturais
+ Explicam como montar objetos e classes em estruturas maiores, mantendo ao mesmo tempo estruturas flexíveis e eficientes
### Padrões comportamentais
+ Cuidam da comunicação eficiente e da assinalação de responsabilidades entre objetos
# Princípios de projeto de software
## Reutilização de código
+ Custo
	+ Maior capital para outras áreas
+ Tempo
	+ Entrar no mercado mais cedo que os competidores
+ Reutilizar código já existente > reescrever código do zero
	+ Redução da flexibilidade por
		+ Firme acoplamento entre os componentes
		+ dependências de classes concretas ao invés de interfaces
	+ Aumentar a flexibilidade
		+ Design Patterns
		+ Preço de trazer mais complexidade ao código
	+ Padrões podem reutilizar ideias e conceitos de projeto independentemente do código concreto
## Extensibilidade
> Mudança é a única coisa constante na vida de um programador

# Princípios de projeto
## Encapsule o que varia
+ Separar os aspectos da aplicação que variam e mudam dos que não mudam
	+ Preservar o resto do código de módulos defeituosos
+ Minimizar o efeito causado por mudanças
### Encapsulamento a nível de método
### Encapsulamento a nível de classe

## Programe para uma interface, não para uma implementação
+ Dependa de abstrações, não classes concretas
+ Como configurar uma colaboração entre objetos: 
	1. Determinar o que exatamente um objeto precisa do outro: quais métodos ele executa? 
	2. Descrever esses métodos em uma nova interface ou classe abstrata
	3. Faça a classe que é uma dependência implementar essa interface
	4. Fazer a outra classe ser dependente da interface em vez da classe concreta

## Prefira composição sobre herança
+ Problemas da herança
	+ Uma subclasse não pode reduzir a interface da superclasse
		+ Temos que implementar todos os métodos abstratos da classe mãe, mesmo em cenários que não os utilizemos
	+ Quando sobreescrevemos métodos precisamos nos certificar que o novo comportamento é compatível com o comportamento base. 
		+ Objetos da subclasse podem ser tratados como objetos da superclasse e talvez o código pode quebrar
	+ A herança quebra o encapsulamento da superclasse
		+ Detalhes internos da superclasse ficam expostos as subclasses
	+ Subclasses fortemente acopladas as superclassses
		+ Qualquer mudança em uma superclasse pode quebrar a subclasse
	+ Tentar reutilizar código através da herança pode levar a criação de hierarquias de heranças paralelas
+ Herança representa uma relação "é um(a)"
+ Composição representa uma relação "tem um(a)"

# Princípios do SOLID
## Princípio da responsabilidade única
+ Uma classe deve ter apenas uma razão para mudar
+ Cada classe deve ser responsável por uma única funcionalidade fornecida pelo software
	+ Responsabilidade deve ser inteiramente encapsulada pela classe
## Princípio aberto / fechado
+ Classes devem ser abertas para extensão, mas fechadas para modificação
+ Prevenir que código existente quebre com a adição de novo código
+ Uma classe é aberta se podemos extende-la
+ Fechada quando estiver 100% pronta para ser usada por outras classes - sua interface está claramente definida e não será mudada no futuro. 
+ Uma classse pode ser aberta e fechada ao mesmo tempo

## Princípio de substituição de Liskov
+ A subclasse deve permanecer compatível com o comportamento da superclasse
+ Ao invés de subtituir o comportamento base, devemos estende-lo
+ Conjunto de checagens que ajudam a prever se uma subclasse permanesce compatível com o código que foi capaz de trabalhar com objetos da superclasse
### Restrições
+ Os tipos de parâmetro em método de uma subclasse devem coincidir ou serem mais abstratos que os tipos de parâmetros nos métodos da superclasse
+ O tipo de retorno de um método de uma subclasse deve coincidir ou ser um subtipo de retorno no método da superclasse
+ Um método em uma subclasse não deve lançar tipos de exceções que não são esperados que o método base lançaria
	+ Tipos de exceções devem coicindir ou serem subtipos daquelas que o método base já é capaz de lançar
+ Uma subclasse não deve fortalecer pré-condições
+ Uma subclasse não deveria enfraquecer pós condições
## Princípio da segregação de interface
+ Clientes não devem ser forçados a depender de métodos que não usam. 
+ Reduzir as interfaces para não precisar obrigar as classes clientes a implementarem certos métodos desnecessários
	+ Quebrar interfaces gordas
## Princípio da inversão de dependência
+ Classes de alto nível não deveriam se preocupar com classes de baixo nível.
+ Ambas devem depender de abstrações

# Catélogo de padrões de projeto
## Padrões de projeto criacionais
+ Mecanismos de criação de objetos
+ Aumentam flexibilidade e reutilização de código já existente
### Factory Method
![[📂 Files/Image/Pasted image 20230102200403.png]]
Fornece uma interface para criar objetos em uma superclasse, mas permite que as subclasses alteraem o tipo de objetos que serão criados
#### Problema
![[📂 Files/Image/Pasted image 20230102201311.png]]
Código sujo repleto de condicionais que alteram o comportamento da aplicação, dependendo da classe de objetos da superclasse
#### Solução
![[📂 Files/Image/Pasted image 20230102201322.png]]
+ Substituir chamadas diretas de instanciamento para métodos de fabrica especial
+ As subclasses só podem retornar tipos diferentes de produtos se esses produtos tiverem uma classe ou interface base em comum
#### Estrutura
![[📂 Files/Image/Pasted image 20230102202832.png]]
1. O produto declara a interface
### Abstract Factory
![[📂 Files/Image/Pasted image 20230102200424.png]]
+ Permite que produzamos famílias de objetos relacionados sem ter que especificar suas classes concretas
### Builder
![[📂 Files/Image/Pasted image 20230102200555.png]]
+ Permite que construamos objetos complexos passo a passo
+ Diferentes tipos e representações de um objeto usando o mesmo código de construção
### Prototype
+ Permite que copiemos objetos existentes sem fazer seu código ficar dependente de suas classes
![[📂 Files/Image/Pasted image 20230102200703.png]]
### Singleton
![[📂 Files/Image/Pasted image 20230102200753.png]]
+ Permite garantirmor que uma classe tenha apenas uma instâncioa, enquanto provemos um ponto de acesso global para essa instância
## References
1. 