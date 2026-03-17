#| title: "Scatterplots: Part 2"
#| description: "It's time to build on your previous scatterplot. In this battle. start with your code from the previous question. Map the `cut` variable to the `colour` aesthetic. Also, set the `alpha` (transparency) of the points to match the target plot and help handle the overplotting."

library(ggplot2)

p <- ggplot(diamonds, aes(x = carat, y = price, colour = cut)) +
  geom_point(alpha = 0.3)

plot(p)