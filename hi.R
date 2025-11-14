#silly little code
library(palmerpenguins)
library(tidyverse)

View(penguins)

penguins |> 
  filter(species == "Chinstrap") |> 
  ggplot(aes(x = body_mass_g, y = bill_length_mm)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(x = "Body mass g", y = "Bill length mm", title = "Chinstrap") +
  theme_bw()

penguins |> 
  filter(species == "Chinstrap") |> 
  ggplot(aes(x = sex, y = body_mass_g, fill = sex)) +
  geom_boxplot() +
  labs(x = "Sex", y = "Body mass g", title = "Chinstrap bodymass") +
  theme_bw() +
  scale_fill_manual(values = c("#046C9A", "#ABDDDE"))

#adding correlation test 
cor.test(penguins$body_mass, penguins$bill_len, method = "pearson")
