# Pacote Faraway ---------------------------------------------------------------------------------------------------------------------------

### O pacote Faraway apresenta diversos bancos de dados que podem ser usados para a 
### prática de estatística.

# Instalar pacote --------------------------------------------------------------------------------------------------------------------------

install.packages("faraway")
library(faraway)

# Carregar banco de dados -------------------------------------------------------------------------------------------------------

faraway::aflatoxin 

## Sobre o banco de dados: aflatoxina B1 foi fornecida a animais de laboratório em doses 
## variadas e o número de respostas de câncer de fígado foi registrado.

# Visualizando o banco de dados selecionado ----------------------------------------------------------------------------------------------------------------

View(aflatoxin)

# Gráfico ----------------------------------------------------------------------------------------------------------------------------------

library(ggplot2) # Pacote para produzir os gráficos
library(viridis)

a1 <- ggplot(aflatoxin, aes(x = dose, y = tumor, color = dose)) +
  geom_point(size = 5) +
  scale_color_viridis(option = "D") +
  labs(y = "Câncer fígado - Número de respostas", x = "Dose Aflatoxin B1",
       title = "Gráfico de pontos") +
  theme(legend.position = "none")
a1

b1 <- ggplot(aflatoxin, aes(x = as.factor(dose), y = tumor, fill = dose)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  scale_fill_viridis(option = "D") +
  labs(y = "Câncer fígado - Número de respostas", x = "Dose Aflatoxin B1",
       title = "Gráfico de barras") +
  theme(legend.position = "none")
b1

## Gráfico juntos - Pacote gridExtra

gridExtra::grid.arrange(a1, b1)
