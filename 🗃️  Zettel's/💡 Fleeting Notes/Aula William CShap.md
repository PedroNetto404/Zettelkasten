**Meta data**
Note-type:: #Zettel/NoteType/Fleeting 
Note-Status:: #Zettel/Status/Pending 
Tags:: 

# Aula William CShap

# Ciclos de vida na injeção de dependência
+ É o tempo de vida de instâncias na aplicação; 
+ Cada template tem um ciclo de vida; 
+ Tempo de vida de uma aplicação web ´é o ciclo de uma request;
+ Temos 3 formas de configurar o tempo de vida de uma instância na aplicação
## Transiente
+ Toda vez que pedimos um serviço desse tipo, temos uma nova instância; 
+ Se em 3 classes na mesma request precisarmos de uma serviço do tipo transiente, 3 novas instâncias são criadas
## Scoped
+ Ciclo de vida que está inserida no ciclo de vida da request; 
## Singleton
+ Ciclo de vida do container de injeção de dependência
## Operação chaveada
+ Service Locator ---> Má prática
## Arquitetura de software
+ Arquitetura limpa
## Pattern Match c\#
## Adicionando tipos genéricos ao container de injeção de dependência
```c#
services.AddScoped(typeof(IPaginacao<>), typeof(Paginacao<>));
```


## References
1. 