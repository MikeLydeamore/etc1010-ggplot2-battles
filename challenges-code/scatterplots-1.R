#| title: "The ggplot canvas and points"
#| category: "Part 1: Scatterplots and Aesthetics"
#| dataset-name: "diamonds"
#| description: "We will use the built-in `diamonds` dataset, which contains price and quality attributes for over 50,000 round-cut diamonds. In this battle, your challenge is to create a scatterplot with `carat` on the x-axis and `price` on the y-axis."
#| stub: "ggplot(diamonds, aes(x = ___, y = ___)) + \n ___()"

library(ggplot2)

p <- ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point()

plot(p)