---
title: "Projeto de Visualização de Dados com Linguagem R e ggplot"
author: "Bianca Rodrigues"
date: "2023-02-04"
output: html_document
---

### Projeto de Visualização de Dados com Linguagem R e ggplot: Palmer Penguins

Esse projeto tem como objetivo ensinar a usar o pacote ggplot para criar visualizações de dados. Foram usados os dados do pacote 'palmerpenguins' disponibilizado pela CRAN. <https://cran.r-project.org/web/packages/palmerpenguins/index.html>.

#### Configuração de ambiente
Você precisa instalar e carregar alguns pacotes para o projeto funcionar. Vamos carregar e instalar os pacotes 'tidyverse' e 'palmerpenguins'.
```{r}
install.packages(tidyverse)
install.packages(palmerpenguins)
library(tidyverse)
library(palmerpenguins)
```

#### Primeira visualização de dados
Vamos analisar inicialmente a relação entre o comprimento das nadadeiras e a massa corporal de 3 espécies de penguins. 
```{r}
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species, shape=species))
```
