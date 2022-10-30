# Ajuda os usuários a interagir com a tecnologia
+ Interfaces computacionais tradicionais funcionam apenas com entradas estruturadas e previsíveis; 
	+ Usuários finais não entendem com facilidade essa entrda etruturada implica em dificuldade em utilização; 
+ Dialogflow lida com o processamento de linguagem natural para fornecer experiências de conversação; 
# Agentes
+ Um agente do Dialogflow é um agente virtual que processa conversas simultâneas com seus usuários finais. 
+ Módulo de processamento de linguagem natural que entende as nuances da lingagem humana. 
+ Dialogflow traduz textos ou áudios do usuário final durante uma conversa para dados estruturados que nossa aplicação consegue entender; 
+ Um agente dialogflow é semelhante a uma agente de call center.
	+ O treinamos para que ele lide com cenários esperados em conversas; 
# Intents
+ Uma intent categoriza a intenção de um usuário final para uma tomada de turno de conversa; 
+ Intents combinadas podem lidar com uma conversa completa![[📂 Files/vool4ruj.bmp]]
## Componentes das intents
### Frases de treinamento
+ Exemplos de possíveis frases que podem ser ditas pelo usuário final; 
+ Quando uma expressão de um usuário final se assemelhar a uma dessas frases, o dialogflow a corresponderá à intent; 
### Ação
+ Definimos uma ação para cada intent; 
+ Quando uma intent é correspondida, o dialogFlow fornece a ação ao sistema, permitindo que adicionemos determinadas ações definidas no sistema; 
### Parâmetros
+ Quando uma intent é correspondida, temos a possibilidade de extrair valores da expressão do usuário final como parâmetros; 
+ Cada parâmetro tem um tipo, chamado de tipo de entidade, que ditam exatamente como os dados são extraidos; 
+ Os parâmetros são dados extruturados que podem ser facilmente usados para executar uma lógica ou gerar respostas; 
### Respostas
+ defina respostas de texto, de fala ou visuais para retornar ao usuário final. Esse retorno pode fornecer respostas ao usuário final, solicitar mais informações ou encerrar a conversa.
![[📂 Files/nvunrihd.bmp]]
## Entities
+ Cada [parâmetro de intent](https://cloud.google.com/dialogflow/docs/intents-actions-parameters#params) tem um tipo chamado [tipo de entidade](https://cloud.google.com/dialogflow/docs/entities-overview), que determina exatamente como os dados de uma expressão de usuário final são extraídos.
+ Podemos criar entidades personalizadas para corresponder a dados personalizados; 

## Contextos
![[📂 Files/d6sl5hl1.bmp]]