#| title: "Scatterplots: Part 4"
#| dataset-name: "diamonds"
#| description: "Using `geom_smooth()`, overlay a linear regression line (`method = 'lm'`) onto the basic scatterplot of `carat` vs `price`. You can drop the `colour = cut` mapping for this plot to make it simpler."

library(ggplot2)

p <- ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point(alpha = 0.3) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Diamond Price vs. Carat",
    x = "Carat",
    y = "Price"
  )

plot(p)