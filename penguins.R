install.packages('palmerpenguins')
library(palmerpenguins)
library(tidyverse)

# insert pipe = CMD SHIFT M

View(penguins)
dim(penguins)
colnames(penguins)
?penguins

# The distribution of a single trait
# What is the lowest and highest bill lengths do penguins in this dataset have? Do different species have different bill lengths? How much do they overlap?

penguins %>%
  ggplot() +
  geom_density(mapping = aes(x = bill_length_mm, fill=species), alpha=0.5)

min('bill_length_mm', na.rm = FALSE)
max('species')
?min

# The relationship between multiple traits
# What is the relationship between body mass and flipper length in penguins in this dataset? Does this relationship differ between species? Given the same body mass, which species of penguins tend to have the longest flippers?

penguins %>%
  ggplot(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species)) +
  geom_point() +
  geom_smooth(method="lm")


penguins %>%
  ggplot(mapping = aes(x = bill_length_mm, y=bill_depth_mm, color=sex)) +
  geom_point(size=1) +
  facet_wrap(~species)




  
  