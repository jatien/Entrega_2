library("tidyverse")
#primer gràfic
mpg %>%
  ggplot(aes(x = manufacturer)) +
  geom_bar(fill = "blue") +
  labs(x = "Fabricante", y = "Número de vehículos") +
  theme_bw() +
  theme(
    axis.text = element_text(size = 5.5),
    axis.title = element_text(size = 20, face = "bold"),
  )

#Segon gràfic
glimpse(mpg)
ggplot(data = mpg, aes(x = class, y = cty)) +
  geom_boxplot(aes(color = class), width = 0.3, 
               show.legend = FALSE) + 
  geom_jitter(aes(color = class), alpha = 0.5, 
              show.legend = FALSE, 
              position = position_jitter(width = 0.2, seed = 0)) +
  scale_color_manual(values = c("darkorange","purple","cyan4","red","blue","orange","green")) +
  labs(x = "Tipo de vehículo", y = "Rendimiento en ciudad")

#Tercer gràfic
trac_tipo <- mpg %>%
  group_by(class,drv)
trac_tipo
ggplot(data = mpg, aes(x = trac_tipo, y = cty)) +
  geom_boxplot(aes(color = trac_tipo), width = 0.3, 
               show.legend = FALSE) + 
  geom_jitter(aes(color = trac_tipo), alpha = 0.5, 
              show.legend = FALSE, 
              position = position_jitter(width = 0.2, seed = 0)) +
  scale_color_manual(values = c("darkorange","purple","cyan4","red","blue","orange","green")) +
  labs(x = "Tipo de vehículo", y = "Rendimiento en ciudad")
#Cuarto gráfico

mass_flipper <- ggplot(data = mpg, 
                       aes(x = displ,
                           y = hwy)) +
  geom_point(aes(color = class, 
                 shape = class),
             size = 3,
             alpha = 0.8) +
  scale_color_manual(values = c("darkorange","purple","cyan4","red","blue","orange","green")) +
  labs(title = "Comparación Tamaño-Rendimiento",
       x = "Tamaño del motor",
       y = "Rendimiento") +
  theme(legend.position = c(0.9, 0.7),
        plot.title.position = "plot",
        plot.caption = element_text(hjust = 0, face= "italic"),
        plot.caption.position = "plot")

mass_flipper
#Quinto gráfico
