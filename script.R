# Bibliotecas e Pacotes
install.packages(tidyverse)
install.packages(palmerpenguins)
library(tidyverse)
library(palmerpenguins)
library(ggplot2)

# Visualizando nosso dataframe (essa função mostra as 6 primeiras linhas)
head(penguins)

#Contando a quantidade de linhas que o dataframe possui
nrow(penguins)

#Contando quantos valores únicos as colunas species e island possuem
penguins %>% 
  count(species)

penguins %>% 
  count(island)

#Primeira visualização de dados (usando estética de cores e forma)
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species, shape=species))


