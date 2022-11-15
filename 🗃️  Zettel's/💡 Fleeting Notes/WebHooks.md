# WebHooks
## Infos
created:: 04-10-2022 14:23
status:: #Zettel/NoteType/Fleeting
## Notes
+ As notificações de evento são propagadas como solicitações HTTP POST que contêm informações sobre o evento em si.
+ Normalmente, a solicitação HTTP POST contém um objeto JSON ou dados de formulário HTML determinados pelo remetente do WebHook, incluindo informações sobre o evento que faz com que o WebHook seja disparado
+ Para garantir que o WebHook seja de fato do remetente pretendido, a solicitação POST é protegida de alguma forma e verificada pelo receptor. Por exemplo, o [GitHub WebHooks](https://developer.github.com/webhooks/) inclui um cabeçalho HTTP _X-Hub-Signature_ com um hash do corpo da solicitação que é verificado pela implementação do receptor para que você não precise se preocupar com isso.
+ Padrão HTTP leve que fornece um modelo simples de pub/sub para conectar apis Web e serviços [[SaaS]]
+ Quando um evento acontece em um serviço, uma notifição é enviada na forma de uma solicitação HTTP POST para assinantes registrados.
	+  A solicitação POST contém informações sobre o evento que possibilita que o receptor atue adequadamente.
### Lado do receptor
+ Modelo comum para receber e processar WebHooks de qualquer número de provedores WebHook
### Lado do envio
+ Fornece suporte para gerenciar e armazenar assinaturas, bem como para enviar **notificações de evento** para o conjunto certo de assinantes. Isso permite que você defina seu próprio conjunto de eventos aos quais os assinantes podem assinar e notificá-los quando as coisas acontecem.
## References
1.
