library(httr)
library(magrittr)
library(jsonlite)
library(tidyverse)
library(tibble)
library(geobr)


# Estudar como aplicar essa solução no meu trabalho final 

# ufs <- unique(geobr::grid_state_correspondence_table$code_state)
# for (i in ufs) {
#   u <- stringr::str_glue("http://www.chancedegol.com.br/br{i}.htm")
#   print(u)
# }


ufs <- unique(geobr::grid_state_correspondence_table$code_state)
for (i in ufs) {
  u <- stringr::str_glue("http://dadosabertos.ibama.gov.br/dados/SICAFI/{i}/Quantidade/multasDistribuidasBensTutelados.json")
  print(u)
}



# Acessando os sites
u_AL <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/AL/Quantidade/multasDistribuidasBensTutelados.json"
r_AL <- GET(u_AL)
u_AC <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/AC/Quantidade/multasDistribuidasBensTutelados.json"
r_AC <- GET(u_AC)
u_AP <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/AP/Quantidade/multasDistribuidasBensTutelados.json"
r_AP <- GET(u_AP)
u_AM <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/AM/Quantidade/multasDistribuidasBensTutelados.json"
r_AM <- GET(u_AM)
u_BA <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/BA/Quantidade/multasDistribuidasBensTutelados.json"
r_BA <- GET(u_BA)
u_CE <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/CE/Quantidade/multasDistribuidasBensTutelados.json"
r_CE <- GET(u_CE)
u_DF <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/DF/Quantidade/multasDistribuidasBensTutelados.json"
r_DF <- GET(u_DF)
u_ES <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/ES/Quantidade/multasDistribuidasBensTutelados.json"
r_ES <- GET(u_ES)
u_GO <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/GO/Quantidade/multasDistribuidasBensTutelados.json"
r_GO <- GET(u_GO)
u_MA <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/MA/Quantidade/multasDistribuidasBensTutelados.json"
r_MA <- GET(u_MA)
u_MT <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/MT/Quantidade/multasDistribuidasBensTutelados.json"
r_MT <- GET(u_MT)
u_MS <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/MS/Quantidade/multasDistribuidasBensTutelados.json"
r_MS <- GET(u_MS)
u_MG <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/MG/Quantidade/multasDistribuidasBensTutelados.json"
r_MG <- GET(u_MG)
u_PA <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/PA/Quantidade/multasDistribuidasBensTutelados.json"
r_PA <- GET(u_PA)
u_PB <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/PB/Quantidade/multasDistribuidasBensTutelados.json"
r_PB <- GET(u_PB)
u_PR <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/PR/Quantidade/multasDistribuidasBensTutelados.json"
r_PR <- GET(u_PR)
u_PE <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/PE/Quantidade/multasDistribuidasBensTutelados.json"
r_PE <- GET(u_PE)
u_PI <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/PI/Quantidade/multasDistribuidasBensTutelados.json"
r_PI <- GET(u_PI)
u_RN <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/RN/Quantidade/multasDistribuidasBensTutelados.json"
r_RN <- GET(u_RN)
u_RS <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/RS/Quantidade/multasDistribuidasBensTutelados.json"
r_RS <- GET(u_RS)
u_RJ <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/RJ/Quantidade/multasDistribuidasBensTutelados.json"
r_RJ <- GET(u_RJ)
u_RO <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/RO/Quantidade/multasDistribuidasBensTutelados.json"
r_RO <- GET(u_RO)
u_RR <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/RR/Quantidade/multasDistribuidasBensTutelados.json"
r_RR <- GET(u_RR)
u_SC <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/SC/Quantidade/multasDistribuidasBensTutelados.json"
r_SC <- GET(u_SC)
u_SP <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/SP/Quantidade/multasDistribuidasBensTutelados.json"
r_SP <- GET(u_SP)
u_SE <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/SE/Quantidade/multasDistribuidasBensTutelados.json"
r_SE <- GET(u_SE)
u_TO <- "http://dadosabertos.ibama.gov.br/dados/SICAFI/TO/Quantidade/multasDistribuidasBensTutelados.json"
r_TO <- GET(u_TO)

# Parseando os objetos e guardando em objetos

dados_json <- httr::content(r_AL, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_AL <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_AC, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_AC <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_AP, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_AP <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_AM, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_AM <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_BA, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_BA <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_CE, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_CE <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_DF, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_DF <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_ES, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_ES <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_GO, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_GO <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_MA, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_MA <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_MT, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_MT <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_MS, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_MS <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_MG, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_MG <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_PA, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_PA <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_PB, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_PB <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_PR, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_PR <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_PE, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_PE <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_PI, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_PI <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_RN, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_RN <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_RS, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_RS <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_RJ, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_RJ <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_RO, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_RO <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_RR, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_RR <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_SC, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_SC <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_SP, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_SP <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_SE, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_SE <- tibble::glimpse(dados_json$data)

dados_json <- httr::content(r_TO, "text") %>% 
  jsonlite::fromJSON() %>% 
  tibble::as_tibble()
quantidade_multa_TO <- tibble::glimpse(dados_json$data)

# dir.create("output", showWarnings = FALSE, recursive = TRUE)

# fazendo o merging de todos os subdataframes

quantidade_geral_multas <- list(quantidade_multa_AL, quantidade_multa_AC, 
                                 quantidade_multa_AP, quantidade_multa_AM,
                                 quantidade_multa_BA, quantidade_multa_CE,
                                 quantidade_multa_DF, quantidade_multa_ES,
                                 quantidade_multa_GO, quantidade_multa_MA,
                                 quantidade_multa_MT, quantidade_multa_MS,
                                 quantidade_multa_MG, quantidade_multa_PA,
                                 quantidade_multa_PB, quantidade_multa_PR,
                                 quantidade_multa_PE, quantidade_multa_PI,
                                 quantidade_multa_RN, quantidade_multa_RS,
                                 quantidade_multa_RJ, quantidade_multa_RO,
                                 quantidade_multa_RR, quantidade_multa_SC,
                                 quantidade_multa_SP, quantidade_multa_SE, 
                                quantidade_multa_TO) %>% reduce(full_join)



# salvando a base em formato csv na pasta output 
#  write_csv(quantidade_geral_multas, "output/1quantidade.csv")


