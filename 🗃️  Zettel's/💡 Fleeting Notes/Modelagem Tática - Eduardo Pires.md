**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 05-01-2023
Created-time:: 10:54
Liteturature-Note:: [[🗃️  Zettel's/Literature Notes/Modelagem Tática - Eduardo Pires]]
Tags:: 

# Modelagem Tática - Eduardo Pires

![[📂 Files/Image/Pasted image 20230105105507.png]]
![[📂 Files/Image/Pasted image 20230105105538.png]]
## Modelos de Domínio
+ Mapear o contexto é fundamental
+ Modelar os objetos de domínio conforme identificados na UL
## Database Agnostic
+ O modelo deve ser fácil de persistir
+ Persistir não deve ser a única preocupação
+ A principal preocupação deve ser manter o sentido com o processo de negócio do domínio
## Linguagem Ubíqua
+ Entender a linguagem para entender o negócio
## Camada de domínio
![[📂 Files/Image/Pasted image 20230105110132.png]]
### Domain Module
+ Aggregates
	+ Value Objects 
	+ Entities
## Value Objects
+ Agrega valor a uma outra coisa
+ Coleção de dados individuais
+ Distinado para ser uma coleção de atributos
+ Imutáveis
+ Mais preciso que os tipos primitivos
	+ Se expressa melhor que tipos primitivos
![[📂 Files/Image/Pasted image 20230105110916.png]]

## Entidade
+ Representa algo do mundo real
+ Possuem Identidade
+ Deve ser exclusiva para o objeto mapeado
+ Possui estados e comportamentos
+ Possui lógica de negócio, mas não faz persistência
## References
