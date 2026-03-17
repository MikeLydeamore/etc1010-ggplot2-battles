#| title: "The Golden Rule of Regression"
#| category: "Part 1: Scatterplots and Aesthetics"
#| dataset-name: "diamonds"
#| description: "Using `geom_smooth()`, overlay a linear regression line (`method = 'lm'`) onto the basic scatterplot of `carat` vs `price`. You can drop the `colour = cut` mapping for this plot to make it simpler."
#| stub: "ggplot(diamonds, aes(x = carat, y = price)) +\n  geom_point(alpha = 0.1) +\n  ___(method = '___', se = TRUE)"

library(ggplot2)

p <- ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point(alpha = 0.1) +
  geom_smooth(method = "lm", se = TRUE)

plot(p)