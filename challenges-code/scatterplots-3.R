#| title: "Scatterplots: Part 3"
#| description: "The next step in building your plot is to add human-readable labels for the title, x-axis, y-axis and legend."

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