---
Type:: #FleetingNote 
Status:: #LiteratureNotePending
Topics:: #Versionamento
Related::
created:: 08-10-2022 08:35
---
# Aula 4 - GIT
# Git
+ Sistema de versionamento de arquivos
	+ Históricos de alterações
		+ Quem alterou?
	+ Como garantimos a integridade das releases? 
	+ Em modificações no mesmo arquivo por pessoas diferentes,  como escolher qual modificação aceitar?
## Repositório
Projeto versionado pelo git; 
	 Podemos ter uma cópia desse repositório em um servidor
		 Compartilhar com várias pessoas em suas máquinas locais. 
		 ### Repositório Local
		 #### Criando um repositório local
		 ##### Git init
				 Inicia um repositório 
#### Mudando o estado dos arquivos
+ Um arquivo ocupado pelo git pode ser classificado em: 
				+ Untracked; 
					+ Quando criamos um novo arquivo e ele não está sendo mapeando pelo git
				+ Stage
					+ Área para armazenamos os arquivos que estão prontos para a nova versão
					+ Quando damos um commit, pegamos o que está no stage
					+ Área de controle
					+ Fora do stage não será pego pra commit
					+ Local onde adicionamos os arquivos que devem ser atualizados quando formos commitar
				+ Modifed
					+ É o estado em que se encontram os arquivos que já estavam sendo mapeados e que foram modificados
				+ ![[📂 Files/🖼️ Images/Pasted image 20221008142534.png]]
			+ ##### git add file
				+ Adiciona arquivos ao stage
			+ ##### git commit 
				+ Cria um ponto histórico no desenvolvimento (versão)
			+ ##### git log
				+  Visualizar o histórico dos commits
			+ ####
	+ ### Repositório remoto
#### git ignore
##### Para criar um modelo pra dotnet
> dotnet new gitignore

git rm --checked nome do arquivo
	Com este comando removemos um arquivo que está sendo monitorado pelo git

#### Para remover as alterações 
> git reset
> git clean -df

### Git pull
### HEAD
É o último commit da história de desenvolvimento 
> Se o repositório remoto estiver adiantado e seu repositório local estiver atrasado devemos fazer o pull antes de realizar o push para alinhar os históricos das branchs

Depois de desenvolver a feature podemos fazer o merge dela na main e exclui-la em seguida
### Stash
Local temporário onde podemos armazenar alterações 
git stash apply para aplicar as modificações da stash
# GitHub
+ Plataforma que faz uso do git
+ Hospedagem de código fonte
+ Arquivos de controle de versão
+ **Permite a integração de pessoas em um projeto**
+  
## References
1. 