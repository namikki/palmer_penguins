
#Analisando a relação entre o comprimento das nadadeiras e a massa corporal 
#das 3 espécies de pinguins (Gráfico de Dispersão)
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species, shape=species)) +
  xlab("Comprimento das Nadadeiras (mm)") +
  ylab("Massa Corporal (g)") +
  ggtitle("Relação entre Massa Corporal e Comprimento das Nadadeiras")

#Analisando a relação entre o comprimento das nadadeiras e a massa corporal 
#das 3 espécies de pinguins (Gráfico de Dispersão) usando a função facet_wrap
#para criar um gráfico separado para cada variável(espécie)
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_wrap(~species)+
  xlab("Comprimento das Nadadeiras (mm)") +
  ylab("Massa Corporal (g)") +
  ggtitle("Relação entre Massa Corporal e Comprimento das Nadadeiras")



