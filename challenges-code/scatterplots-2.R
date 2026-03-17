#| title: "Mapping colour and transparency"
#| category: "Part 1: Scatterplots and Aesthetics"
#| dataset-name: "diamonds"
#| description: "It's time to build on your previous scatterplot. In this battle. start with your code from the previous question. Map the `cut` variable to the `colour` aesthetic. Also, set the `alpha` (transparency) of the points to match the target plot and help handle the overplotting."
#| stub: "ggplot(diamonds, aes(x = carat, y = price, ___ = ___)) +\n  geom_point(___ = ___)"

library(ggplot2)

p <- ggplot(diamonds, aes(x = carat, y = price, colour = cut)) +
  geom_point(alpha = 0.3)

plot(p)