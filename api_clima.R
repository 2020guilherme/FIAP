# api_clima.R

# Instale e carregue os pacotes necessários (se ainda não o fez)
if (!require(httr)) install.packages("httr")
if (!require(jsonlite)) install.packages("jsonlite")
library(httr)
library(jsonlite)

# Substitua 'SUA_API_KEY_AQUI' pela sua chave da OpenWeatherMap
API_KEY <- "488308cde542cbeb55aae32ffdd98fb4" 

# Lista das 5 cidades que mais produzem Soja e Milho no Estado de São Paulo
cidades <- c("Itapetininga", "Itapeva", "Capão Bonito", "Itaberá", "Itapetininga")

cat("----------------------------------------\n")
cat("  Previsão do Tempo nas Cidades Produtoras\n")
cat("----------------------------------------\n")

for (cidade in cidades) {
  # Constrói a URL da requisição
  URL <- paste0("http://api.openweathermap.org/data/2.5/weather?q=",
                URLencode(cidade), ",BR&units=metric&appid=", API_KEY, "&lang=pt")
  
  # Faz a requisição para a API
  resposta <- GET(URL)
  
  # Processa os dados se a requisição for bem-sucedida
  if (http_error(resposta)) {
    cat(paste("Erro ao acessar a API para", cidade, ":", http_status(resposta)$message, "\n"))
  } else {
    dados_clima <- fromJSON(content(resposta, "text", encoding = "UTF-8"))
    
    # Extrai as informações e exibe no terminal
    temperatura <- dados_clima$main$temp
    umidade <- dados_clima$main$humidity
    descricao_clima <- dados_clima$weather$description[1]
    
    cat("Previsão para", dados_clima$name, ":\n")
    cat("  - Temperatura Atual: ", temperatura, "°C\n")
    cat("  - Condição do Tempo: ", descricao_clima, "\n")
    cat("  - Umidade do Ar:     ", umidade, "%\n\n")
  }
}