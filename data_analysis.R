# QUESTÕES PARA RESPONDER
library(dplyr)

# Qual é a distribuição espacial das multas?

# Baixa regulacao do estado

# Perfil de governança dos locais

# COmo conseguir os dados de quem não foi pego pela legislação 

arrecadacao_geral_multas %>% 
  select(municipio, uf, tipoInfracao, tipoAuto, statusDebito, valorAuto, valorPago) %>% 
  head()
    
    