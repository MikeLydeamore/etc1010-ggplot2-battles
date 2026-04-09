#| title: "Small Multiples with `facet_grid()`"
#| category: "Week 6 Part 1: Pre-Modelling EDA"
#| dataset-name: "diamonds"
#| description: "Create a scatter plot of `carat` (x-axis) vs `price` (y-axis) using `diamonds_sample`. Use `facet_grid()` to split the plot by two variables: `cut` (rows) and `color` (columns)"
#| prerun-code: "set.seed(42)"
#| stub: "ggplot(diamonds_sample, aes(x = ___, y = ___)) +  \n  geom_point(alpha = 0.5) +  \n  ____(cut ~ color) +  \n  labs(title = "Price vs Carat faceted by Cut and Color",  \n       x = "Carat", \n       y = "Price (USD)")"

library(ggplot2)
library(dplyr)

set.seed(42)
diamonds_sample <- diamonds |> sample_n(1000)

p <- ggplot(diamonds_sample, aes(x = carat, y = price)) +
  geom_point(alpha = 0.5) +
  facet_grid(cut ~ color) +
  labs(
    title = "Price vs Carat faceted by Cut and Color",
    x = "Carat", y = "Price (USD)"
  )

print(p)