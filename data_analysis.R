# QUEST�ES PARA RESPONDER
library(dplyr)

# Qual � a distribui��o espacial das multas?

# Baixa regulacao do estado

# Perfil de governan�a dos locais

# COmo conseguir os dados de quem n�o foi pego pela legisla��o 

arrecadacao_geral_multas %>% 
  select(municipio, uf, tipoInfracao, tipoAuto, statusDebito, valorAuto, valorPago) %>% 
  head()
    
    