# clima.R
library(httr)
library(jsonlite)

# API gratuita Open-Meteo (São Paulo -23.55, -46.63)
url <- "https://api.open-meteo.com/v1/forecast?latitude=-23.55&longitude=-46.63&current_weather=true"
res <- GET(url)
dados <- fromJSON(content(res, "text"))

cat("📡 Clima em São Paulo\n")
cat("Temperatura atual:", dados$current_weather$temperature, "°C\n")
cat("Vento:", dados$current_weather$windspeed, "km/h\n")
