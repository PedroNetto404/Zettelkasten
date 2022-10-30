No ASP.NET temos o Owin, que é uma especificação de como podemos separar uma aplicação web do seu ambiente de hospedagem.
A ideia aqui é que a aplicação web seja totalmente independente do seu ambiente de hospedagem.

Um middleware em ASP.NET é uma camada intermediária que pode ser adicionada em determinado ponto do fluxo de processamento de uma request / response em ASP.NET; 
ASP.NET é a tecnologia para aplicações Web e com ela podemos escrever middlewares. O MVC, Identity e eoutros, são middlewares escritos em cima do framework; 

A interface IConfiguration é um tipo que define um contrato para que possamos trabalhar com a representação de uma raiz de hiearquia; 
Com essa interface conseguimos trabalhar com as restrições do ASP.NET
O próprio Pipeline de construção do ASP.NET já configura uma instância; 

A interface IServiceColletion representa uma interface que nos oferece um acesso a um container de serviços que são utilizados para adicionar os middlewares ao pipeline; 
Essa interface é extendida por métodos que implementam a lógica dos middlewares

A interfacace IApplicationBuilder representa uma classe onde configuramos os serviços adicionados ao container de serviços. Aqui fazemos o uso desses serviços para as configurações de como eles devem se comportar
