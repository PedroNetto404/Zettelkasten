**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 21-12-2022
Created-time:: 11:30
Liteturature-Note:: [[🗃️  Zettel's/Literature Notes/Web Page Building Blocks]]
Tags:: 

# Web Page Building Blocks
+ Documento HTML hospeda seu conteúdo e descreve seu significado
## Componentes principais de uma página web
+ Conteúdo de texto
+ Referências para outros arquivos
	+ Imagens, audios, vídeos, svg, ou outras páginas HTML
	+ Folhas de estilo 
	+ JavaScript
+ Marcações
	+ Elementos HTML que descrevem seu conteúdo texto 

> Cada um dos componentes de uma página web é exclusivamente texto
> 	Páginas são armazenadas em formato de texto
> 		Universalidade da web
> Uma página pode conter diretivas para o motor de renderização ou mecanismos de buscar como linguagem, padrão de encoding e etc

## A Basic HTML Page
```html
<!DOCTYPE html>  
<html lang="en">  
<head>  
<meta charset="utf-8" />  
<title>Blue Flax (Linum lewisii)</title>  
</head>  
<body>  
<article>  
<h1>The Ephemeral Blue Flax</h1>  
<img src="blueflax.jpg" width="300" height="175" alt="Blue Flax (Linum lewisii)" />  
<p>I am continually <em>amazed</em> at the beautiful, delicate <a href="http://  
➝ en.wikipedia.org/wiki/Linum_lewisii" rel="external" title="Learn more about Blue  
➝ Flax">Blue Flax</a> that somehow took hold in my garden. They are awash in color every  
➝ morning, yet not a single flower remains by the afternoon. They are the very definition  
➝ of ephemeral.</p>  
</article>  
</body>  
</html>
```

+ Tudo acima da tag body é de cunho informacional tanto para o browser, quanto para engines de busca; 
+ A diretiva DOCTYPE informa ao browser em que versão o documento HTML se encontra

+ O conteúdo da página começa na tag body e o fim do documento HTML termina com a tag html

## Semantic HTML: Markup with Meaning

+ Sistema inteligênte de incluir informações sobre o conteúdo de um documento de texto
	+ Descreve o significado do conteúdo
> Cada navegador tem um arquivo css que define o estilo padrão de cada elemento HTML. 
> Quando escrevemos uma folha de estilo própria sobreescrevemos esse padrão.

### Block-level, inline, and HTML 5

+ O HTML 5 foca mais na semântica e deixar todos os detalhes de estilo para o CSS
+ O HTML serve apenas para descrever o significado do conteúdo, não a sua exibição. 
+ Devemos escolher elementos HTML que mais descrevem o significado do seu conteúdo sem considerarmos a sua apresentação

### Importância do HTML semântico
+ Melhora da acessibilidade e da interoperabilidade
+ Melhora para motores de pesquisa
+ Códigos mais leves e páginas mais rápidas
+ Facilidade de desenvolver e manter / facilidade de estilização
## Markup: Elements, Attributes, and Values
## References
1. 