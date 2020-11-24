library(httr)
library(magrittr)
library(jsonlite)
library(tidyverse)
library(tibble)
library(geobr)


# como desenvolver a solução abaixo no meu codigo?

ufs <- unique(geobr::grid_state_correspondence_table$code_state)

for (i in ufs) {
  u <- stringr::str_glue("http://dadosabertos.ibama.gov.br/dados/SICAFI/{i}/Quantidade/multasDistribuidasBensTutelados.json")
  print(u)
} 

  # url <- GET()

  # dados_json <- httr::content(r_CE, "text") %>% 
  # jsonlite::fromJSON() %>% 
  # tibble::as_tibble()
# arrec_AL <- tibble::glimpse(dados_json$data)




# Acessando os sites
u_AL <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/AL/Arrecadacao/arrecadacaobenstutelados.json"
r_AL <- GET(u_AL)
u_AC <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/AC/Arrecadacao/arrecadacaobenstutelados.json"
r_AC <- GET(u_AC)
u_AP <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/AP/Arrecadacao/arrecadacaobenstutelados.json"
r_AP <- GET(u_AP)
u_AM <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/AM/Arrecadacao/arrecadacaobenstutelados.json"
r_AM <- GET(u_AM)
u_BA <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/BA/Arrecadacao/arrecadacaobenstutelados.json"
r_BA <- GET(u_BA)
u_CE <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/CE/Arrecadacao/arrecadacaobenstutelados.json"
r_CE <- GET(u_CE)
u_DF <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/DF/Arrecadacao/arrecadacaobenstutelados.json"
r_DF <- GET(u_DF)
u_ES <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/ES/Arrecadacao/arrecadacaobenstutelados.json"
r_ES <- GET(u_ES)
u_GO <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/GO/Arrecadacao/arrecadacaobenstutelados.json"
r_GO <- GET(u_GO)
u_MA <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/MA/Arrecadacao/arrecadacaobenstutelados.json"
r_MA <- GET(u_MA)
u_MT <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/MT/Arrecadacao/arrecadacaobenstutelados.json"
r_MT <- GET(u_MT)
u_MS <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/MS/Arrecadacao/arrecadacaobenstutelados.json"
r_MS <- GET(u_MS)
u_MG <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/MG/Arrecadacao/arrecadacaobenstutelados.json"
r_MG <- GET(u_MG)
u_PA <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/PA/Arrecadacao/arrecadacaobenstutelados.json"
r_PA <- GET(u_PA)
u_PB <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/PB/Arrecadacao/arrecadacaobenstutelados.json"
r_PB <- GET(u_PB)
u_PR <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/PR/Arrecadacao/arrecadacaobenstutelados.json"
r_PR <- GET(u_PR)
u_PE <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/PE/Arrecadacao/arrecadacaobenstutelados.json"
r_PE <- GET(u_PE)
u_PI <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/PI/Arrecadacao/arrecadacaobenstutelados.json"
r_PI <- GET(u_PI)
u_RN <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/RN/Arrecadacao/arrecadacaobenstutelados.json"
r_RN <- GET(u_RN)
u_RS <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/RS/Arrecadacao/arrecadacaobenstutelados.json"
r_RS <- GET(u_RS)
u_RJ <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/RJ/Arrecadacao/arrecadacaobenstutelados.json"
r_RJ <- GET(u_RJ)
u_RO <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/RO/Arrecadacao/arrecadacaobenstutelados.json"
r_RO <- GET(u_RO)
u_RR <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/RR/Arrecadacao/arrecadacaobenstutelados.json"
r_RR <- GET(u_RR)
u_SC <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/SC/Arrecadacao/arrecadacaobenstutelados.json"
r_SC <- GET(u_SC)
u_SP <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/SP/Arrecadacao/arrecadacaobenstutelados.json"
r_SP <- GET(u_SP)
u_SE <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/SE/Arrecadacao/arrecadacaobenstutelados.json"
r_SE <- GET(u_SE)
u_TO <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/TO/Arrecadacao/arrecadacaobenstutelados.json"
r_TO <- GET(u_TO)



# Parseando os objetos e guardando em objetos

dados_json <- httr::content(r_AL, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_AL <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_AC, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_AC <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_AP, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_AP <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_AM, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_AM <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_BA, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_BA <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_CE, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_CE <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_DF, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_DF <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_ES, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_ES <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_GO, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_GO <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_MA, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_MA <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_MT, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_MT <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_MS, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_MS <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_MG, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_MG <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_PA, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_PA <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_PB, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_PB <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_PR, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_PR <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_PE, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_PE <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_PI, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_PI <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_RN, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_RN <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_RS, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_RS <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_RJ, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_RJ <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_RO, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_RO <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_RR, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_RR <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_SC, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_SC <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_SP, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_SP <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_SE, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_SE <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_TO, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
arrec_TO <- tibble::glimpse(dados_json$data)

# dir.create("output", showWarnings = FALSE, recursive = TRUE)

# fazendo o merging de todos os subdataframes

arrecadacao_geral_multas <- list(arrec_AL, arrec_AC, 
                 arrec_AP, arrec_AM,
                arrec_BA, arrec_CE,
                arrec_DF, arrec_ES,
                arrec_GO, arrec_MA,
                arrec_MT, arrec_MS,
                arrec_MG, arrec_PA,
                arrec_PB, arrec_PR,
                arrec_PE, arrec_PI,
                arrec_RN, arrec_RS,
                arrec_RJ, arrec_RO,
                arrec_RR, arrec_SC,
                arrec_SP, arrec_SE, 
                arrec_TO) %>% reduce(full_join)

# write_csv(arrecadacao_geral_multas, "arrecadacao.csv")

