**Meta data**
Note-type:: #Zettel/Fleeting
Note-Status:: #Zettel/Status/Pending 
Tags:: 
Created:: 03-11-2022 19:12

# ASP.NET Filtros

annotation-target::[[🗃️  Zettel's/💡 Fleeting Notes/Filtros em ASP.NET.pdf]]



## References
1. 



>%%
>```annotation-json
>{"created":"2022-11-03T22:17:56.892Z","text":"Podemos escolher em que momento do processamento da request gostaríamos de aplicar um filtro para lidar com algum ponto","updated":"2022-11-03T22:17:56.892Z","document":{"title":"Filtros no ASP.NET Core | Microsoft Learn","link":[{"href":"urn:x-pdf:7cdb53216b1e5ce8d572c87a9bbee529"},{"href":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf"}],"documentFingerprint":"7cdb53216b1e5ce8d572c87a9bbee529"},"uri":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","target":[{"source":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","selector":[{"type":"TextPositionSelector","start":137,"end":284},{"type":"TextQuoteSelector","exact":"Os filtros no ASP.NET Core permitem que o código seja executado antes ou depoisde estágios específicos no pipeline de processamento de solicitação.","prefix":"son , Tom Dykstra  e Steve Smith","suffix":"O filtros internos lidam com tar"}]}]}
>```
>%%
>*%%PREFIX%%son , Tom Dykstra  e Steve Smith%%HIGHLIGHT%% ==Os filtros no ASP.NET Core permitem que o código seja executado antes ou depoisde estágios específicos no pipeline de processamento de solicitação.== %%POSTFIX%%O filtros internos lidam com tar*
>%%LINK%%[[#^v89e6eq44p|show annotation]]
>%%COMMENT%%
>Podemos escolher em que momento do processamento da request gostaríamos de aplicar um filtro para lidar com algum ponto
>%%TAGS%%
>
^v89e6eq44p


>%%
>```annotation-json
>{"created":"2022-11-03T22:19:21.919Z","text":"Em um task que fiz no trabalho precisei autenticar o Ip de origem da request e acabei utilizando um middleware no começo do pipeline. Poderia utilizar um filtro também no começo da request","updated":"2022-11-03T22:19:21.919Z","document":{"title":"Filtros no ASP.NET Core | Microsoft Learn","link":[{"href":"urn:x-pdf:7cdb53216b1e5ce8d572c87a9bbee529"},{"href":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf"}],"documentFingerprint":"7cdb53216b1e5ce8d572c87a9bbee529"},"uri":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","target":[{"source":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","selector":[{"type":"TextPositionSelector","start":326,"end":412},{"type":"TextQuoteSelector","exact":"Autorização, impedindo o acesso a recursos para os quais um usuário não estáautorizado","prefix":"internos lidam com tarefas como:","suffix":".Cache de resposta, curto-circui"}]}]}
>```
>%%
>*%%PREFIX%%internos lidam com tarefas como:%%HIGHLIGHT%% ==Autorização, impedindo o acesso a recursos para os quais um usuário não estáautorizado== %%POSTFIX%%.Cache de resposta, curto-circui*
>%%LINK%%[[#^1ex4eatkoye|show annotation]]
>%%COMMENT%%
>Em um task que fiz no trabalho precisei autenticar o Ip de origem da request e acabei utilizando um middleware no começo do pipeline. Poderia utilizar um filtro também no começo da request
>%%TAGS%%
>
^1ex4eatkoye


>%%
>```annotation-json
>{"created":"2022-11-03T22:23:43.866Z","text":"Temos tipos diferentes de filtros que são executados em momentos diferentes no pipeline de filtros. \nFiltros de recurso podem ser executados antes de uma model ser populada ou depois.\nFiltros de ação, executados imediatamente antes de uma ação ser executada ou lgoo depois que um método de ação ser chamado. Eles podem alterar os argumenrtos passados para uma action. \nFiltros de exceção.\nFiltros de resultados","updated":"2022-11-03T22:23:43.866Z","document":{"title":"Filtros no ASP.NET Core | Microsoft Learn","link":[{"href":"urn:x-pdf:7cdb53216b1e5ce8d572c87a9bbee529"},{"href":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf"}],"documentFingerprint":"7cdb53216b1e5ce8d572c87a9bbee529"},"uri":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","target":[{"source":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","selector":[{"type":"TextPositionSelector","start":2060,"end":2075},{"type":"TextQuoteSelector","exact":"Tipos de filtro","prefix":"onclusão do restante dopipeline.","suffix":"Filtros no ASP.NET Core | Micros"}]}]}
>```
>%%
>*%%PREFIX%%onclusão do restante dopipeline.%%HIGHLIGHT%% ==Tipos de filtro== %%POSTFIX%%Filtros no ASP.NET Core | Micros*
>%%LINK%%[[#^489zgws2mjp|show annotation]]
>%%COMMENT%%
>Temos tipos diferentes de filtros que são executados em momentos diferentes no pipeline de filtros. 
>Filtros de recurso podem ser executados antes de uma model ser populada ou depois.
>Filtros de ação, executados imediatamente antes de uma ação ser executada ou lgoo depois que um método de ação ser chamado. Eles podem alterar os argumenrtos passados para uma action. 
>Filtros de exceção.
>Filtros de resultados
>%%TAGS%%
>
^489zgws2mjp


>%%
>```annotation-json
>{"created":"2022-11-03T22:29:14.426Z","text":"É chamado antes que uma action seja chamada\n","updated":"2022-11-03T22:29:14.426Z","document":{"title":"Filtros no ASP.NET Core | Microsoft Learn","link":[{"href":"urn:x-pdf:7cdb53216b1e5ce8d572c87a9bbee529"},{"href":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf"}],"documentFingerprint":"7cdb53216b1e5ce8d572c87a9bbee529"},"uri":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","target":[{"source":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","selector":[{"type":"TextPositionSelector","start":3350,"end":3367},{"type":"TextQuoteSelector","exact":"OnActionExecuting","prefix":"stágio do pipeline. Porexemplo, ","suffix":" é chamado antes que o método de"}]}]}
>```
>%%
>*%%PREFIX%%stágio do pipeline. Porexemplo,%%HIGHLIGHT%% ==OnActionExecuting== %%POSTFIX%%é chamado antes que o método de*
>%%LINK%%[[#^au1d10xm6zo|show annotation]]
>%%COMMENT%%
>É chamado antes que uma action seja chamada
>
>%%TAGS%%
>
^au1d10xm6zo


>%%
>```annotation-json
>{"created":"2022-11-03T22:29:36.606Z","text":"É chamado depois que uma action termina (retorna)","updated":"2022-11-03T22:29:36.606Z","document":{"title":"Filtros no ASP.NET Core | Microsoft Learn","link":[{"href":"urn:x-pdf:7cdb53216b1e5ce8d572c87a9bbee529"},{"href":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf"}],"documentFingerprint":"7cdb53216b1e5ce8d572c87a9bbee529"},"uri":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","target":[{"source":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","selector":[{"type":"TextPositionSelector","start":3418,"end":3434},{"type":"TextQuoteSelector","exact":"OnActionExecuted","prefix":"e o método de ação seja chamado.","suffix":" é chamado depois que o método d"}]}]}
>```
>%%
>*%%PREFIX%%e o método de ação seja chamado.%%HIGHLIGHT%% ==OnActionExecuted== %%POSTFIX%%é chamado depois que o método d*
>%%LINK%%[[#^qekt5iaa8n|show annotation]]
>%%COMMENT%%
>É chamado depois que uma action termina (retorna)
>%%TAGS%%
>
^qekt5iaa8n


>%%
>```annotation-json
>{"created":"2022-11-03T22:29:59.471Z","text":"Para criar um filtro para um action precisamos implementar a interface IActionFilter","updated":"2022-11-03T22:29:59.471Z","document":{"title":"Filtros no ASP.NET Core | Microsoft Learn","link":[{"href":"urn:x-pdf:7cdb53216b1e5ce8d572c87a9bbee529"},{"href":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf"}],"documentFingerprint":"7cdb53216b1e5ce8d572c87a9bbee529"},"uri":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","target":[{"source":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","selector":[{"type":"TextPositionSelector","start":3872,"end":3885},{"type":"TextQuoteSelector","exact":"IActionFilter","prefix":"blic class SampleActionFilter : ","suffix":"{public void OnActionExecuting(A"}]}]}
>```
>%%
>*%%PREFIX%%blic class SampleActionFilter :%%HIGHLIGHT%% ==IActionFilter== %%POSTFIX%%{public void OnActionExecuting(A*
>%%LINK%%[[#^ewda7dqoff9|show annotation]]
>%%COMMENT%%
>Para criar um filtro para um action precisamos implementar a interface IActionFilter
>%%TAGS%%
>
^ewda7dqoff9


>%%
>```annotation-json
>{"created":"2022-11-03T22:31:32.916Z","text":"Podemos também ter filtros assíncronos que recebem por parâmetro um delegate para a action a ser executada. \nDevemos implementar a interface IAsyncActionFilter\n","updated":"2022-11-03T22:31:32.916Z","document":{"title":"Filtros no ASP.NET Core | Microsoft Learn","link":[{"href":"urn:x-pdf:7cdb53216b1e5ce8d572c87a9bbee529"},{"href":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf"}],"documentFingerprint":"7cdb53216b1e5ce8d572c87a9bbee529"},"uri":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","target":[{"source":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","selector":[{"type":"TextPositionSelector","start":3561,"end":3583},{"type":"TextQuoteSelector","exact":"OnActionExecutionAsync","prefix":"cutionAsync método . Por exemplo","suffix":":C#No código anterior, o SampleA"}]}]}
>```
>%%
>*%%PREFIX%%cutionAsync método . Por exemplo%%HIGHLIGHT%% ==OnActionExecutionAsync== %%POSTFIX%%:C#No código anterior, o SampleA*
>%%LINK%%[[#^g1sr1hhtyxh|show annotation]]
>%%COMMENT%%
>Podemos também ter filtros assíncronos que recebem por parâmetro um delegate para a action a ser executada. 
>Devemos implementar a interface IAsyncActionFilter
>
>%%TAGS%%
>
^g1sr1hhtyxh



>%%
>```annotation-json
>{"created":"2022-11-03T22:35:28.213Z","updated":"2022-11-03T22:35:28.213Z","document":{"title":"Filtros no ASP.NET Core | Microsoft Learn","link":[{"href":"urn:x-pdf:7cdb53216b1e5ce8d572c87a9bbee529"},{"href":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf"}],"documentFingerprint":"7cdb53216b1e5ce8d572c87a9bbee529"},"uri":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","target":[{"source":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","selector":[{"type":"TextPositionSelector","start":4657,"end":4750},{"type":"TextQuoteSelector","exact":"Implemente ou a versão assíncrona ou a versão síncrona de uma interface de filtro,não ambas. ","prefix":"IAsyncResultFilterIOrderedFilter","suffix":"Primeiro, o runtime verifica se "}]}]}
>```
>%%
>*%%PREFIX%%IAsyncResultFilterIOrderedFilter%%HIGHLIGHT%% ==Implemente ou a versão assíncrona ou a versão síncrona de uma interface de filtro,não ambas.== %%POSTFIX%%Primeiro, o runtime verifica se*
>%%LINK%%[[#^dsan5sh18ae|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^dsan5sh18ae


>%%
>```annotation-json
>{"created":"2022-11-03T22:40:36.188Z","text":"Podemos definir o escopo de um filtro de três formas. \n1 - anotando em cima de uma action; \n2 - anotando em cima de um controller\n3 - configurando um option na startp up","updated":"2022-11-03T22:40:36.188Z","document":{"title":"Filtros no ASP.NET Core | Microsoft Learn","link":[{"href":"urn:x-pdf:7cdb53216b1e5ce8d572c87a9bbee529"},{"href":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf"}],"documentFingerprint":"7cdb53216b1e5ce8d572c87a9bbee529"},"uri":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","target":[{"source":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","selector":[{"type":"TextPositionSelector","start":8792,"end":8799},{"type":"TextQuoteSelector","exact":"Escopos","prefix":"os parafiltros de ação síncrona:","suffix":" e ordem de execução dos filtros"}]}]}
>```
>%%
>*%%PREFIX%%os parafiltros de ação síncrona:%%HIGHLIGHT%% ==Escopos== %%POSTFIX%%e ordem de execução dos filtros*
>%%LINK%%[[#^z8yvbakepa|show annotation]]
>%%COMMENT%%
>Podemos definir o escopo de um filtro de três formas. 
>1 - anotando em cima de uma action; 
>2 - anotando em cima de um controller
>3 - configurando um option na startp up
>%%TAGS%%
>
^z8yvbakepa


>%%
>```annotation-json
>{"created":"2022-11-03T22:41:53.324Z","text":"A order de execução de um filtro é de fora para dentro segundo a ordem de escopo (do maior para o menor)","updated":"2022-11-03T22:41:53.324Z","document":{"title":"Filtros no ASP.NET Core | Microsoft Learn","link":[{"href":"urn:x-pdf:7cdb53216b1e5ce8d572c87a9bbee529"},{"href":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf"}],"documentFingerprint":"7cdb53216b1e5ce8d572c87a9bbee529"},"uri":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","target":[{"source":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","selector":[{"type":"TextPositionSelector","start":8188,"end":8277},{"type":"TextQuoteSelector","exact":"iltros globais circundam filtrosde classe, que, por sua vez, circundam filtros de método.","prefix":"adrão de execução dos filtros. F","suffix":"Como resultado do aninhamento de"}]}]}
>```
>%%
>*%%PREFIX%%adrão de execução dos filtros. F%%HIGHLIGHT%% ==iltros globais circundam filtrosde classe, que, por sua vez, circundam filtros de método.== %%POSTFIX%%Como resultado do aninhamento de*
>%%LINK%%[[#^sanni9n6btf|show annotation]]
>%%COMMENT%%
>A order de execução de um filtro é de fora para dentro segundo a ordem de escopo (do maior para o menor)
>%%TAGS%%
>
^sanni9n6btf


>%%
>```annotation-json
>{"created":"2022-11-03T22:43:23.008Z","text":"No caso do OnActionExecuted, este método do filtro é executado na orderm inversa ao OnActionExecuting, do menor escopo para o maior","updated":"2022-11-03T22:43:23.008Z","document":{"title":"Filtros no ASP.NET Core | Microsoft Learn","link":[{"href":"urn:x-pdf:7cdb53216b1e5ce8d572c87a9bbee529"},{"href":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf"}],"documentFingerprint":"7cdb53216b1e5ce8d572c87a9bbee529"},"uri":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","target":[{"source":"vault:/%F0%9F%97%83%EF%B8%8F  Zettel's/%F0%9F%92%A1 Fleeting Notes/Filtros em ASP.NET.pdf","selector":[{"type":"TextPositionSelector","start":9313,"end":9329},{"type":"TextQuoteSelector","exact":"OnActionExecuted","prefix":"g3 Ação OnActionExecuting4 Ação ","suffix":"5 Controller OnActionExecuted6 G"}]}]}
>```
>%%
>*%%PREFIX%%g3 Ação OnActionExecuting4 Ação%%HIGHLIGHT%% ==OnActionExecuted== %%POSTFIX%%5 Controller OnActionExecuted6 G*
>%%LINK%%[[#^gzf7vgg8wbo|show annotation]]
>%%COMMENT%%
>No caso do OnActionExecuted, este método do filtro é executado na orderm inversa ao OnActionExecuting, do menor escopo para o maior
>%%TAGS%%
>
^gzf7vgg8wbo
