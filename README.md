---
title: "Projeto de Visualização de Dados com Linguagem R e ggplot"
author: "Bianca Rodrigues"
date: "2023-02-04"
output: html_document
---

## Projeto de Visualização de Dados com Linguagem R e ggplot: Palmer Penguins

Esse projeto tem como objetivo ensinar a usar o pacote ggplot para criar visualizações de dados. Foram usados os dados do pacote [palmerpenguins](https://cran.r-project.org/web/packages/palmerpenguins/index.html) disponibilizado pela CRAN.

### Configuração de ambiente
Você precisa instalar e carregar alguns pacotes para o projeto funcionar. Vamos carregar e instalar os pacotes 'tidyverse' e 'palmerpenguins'.
```{r}
install.packages(tidyverse)
install.packages(palmerpenguins)
library(tidyverse)
library(palmerpenguins)
```

### Primeira visualização de dados
Vamos analisar inicialmente a relação entre o comprimento das nadadeiras e a massa corporal de 3 espécies de penguins. Usaremos os parâmetros de cor e forma para diferenciar as espécies e vamos renomear o nome dos eixos do gráfico e adicionar um título.
```{r}
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species, shape=species)) +
  xlab("Comprimento das Nadadeiras (mm)") +
  ylab("Massa Corporal (g)") +
  ggtitle("Relação entre Massa Corporal e Comprimento das Nadadeiras")
```
### Outra alternativa
Podemos realizar a mesma análise de um jeito diferente, usando a função facet_wrap() que criar um gráfico diferente para cada variável, que no nosso caso são as espécies de pinguins.
```{r}
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_wrap(~species)+
  xlab("Comprimento das Nadadeiras (mm)") +
  ylab("Massa Corporal (g)") +
  ggtitle("Relação entre Massa Corporal e Comprimento das Nadadeiras")
```
