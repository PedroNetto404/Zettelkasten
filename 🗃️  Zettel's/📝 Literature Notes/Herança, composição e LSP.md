**Meta data**
Note-type:: #Zettel/NoteType/Literature 
Note-Status:: #Zettel/Status/Pending
Created-date:: 14-11-2022 
Created-time:: 12:03
Permanent-Note::
Tags::

# Herança, composição e LSP
Há uma citação de Joshua Bloch que diz "Crie suas classes pensando em herança, ou então as proiba". Isso quer dizer que as classes filhas de um herança devem respeitar as condições impostas pela classe pai, de uma forma que em todo ponto do sistema que estivermos utilizando a classe pai, as classes filhas podem ser substituidas sem nenhuma quebra.
Dessa forma usamos herança da forma correta.
As condições impostas pela classe pai podem ser pré e pós-condições.
As classes filhas podem melhorar as pré-condições da classe pai, mas não as pós-condições, podendo apenas restringí-las.


# References
1. 