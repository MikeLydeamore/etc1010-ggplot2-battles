#| title: "Adding labels with `labs()`"
#| category: "Part 1: Scatterplots and Aesthetics"
#| dataset-name: "diamonds"
#| description: "The next step in building your plot is to add human-readable labels for the title, x-axis, y-axis and legend."
#| stub: "ggplot(diamonds, aes(x = carat, y = price, colour = cut)) +\n  geom_point(alpha = 0.3) +\n  ___(\n    title = \n'___',\n    x = '___',\n    y = '___',\n    colour = '___'\n  )"

library(ggplot2)

p <- ggplot(diamonds, aes(x = carat, y = price, colour = cut)) +
  geom_point(alpha = 0.3) +
  labs(
    title = "Diamond Price vs. Carat",
    x = "Carat",
    y = "Price",
    colour = "Cut"
  )

plot(p)