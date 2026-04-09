#| title: "Linearity and Collinearity"
#| category: "Week 6 Part 1: Pre-Modelling EDA"
#| dataset-name: "diamonds_sample"
#| description: "Before running a regression model to predict `price`, we must check for linearity and collinearity among our predictors. Use `GGally::ggpairs()` on the `diamonds_sample` dataset to plot the relationships between `price`, `carat`, `depth`, and `table`."
#| prerun-code: "set.seed(42)"
#| stub: "diamonds_sample |> \n  select(___, ___, ___, ___) |> \n  ___() + \n  labs(title = "Pairwise relationships in diamonds")"

library(ggplot2)
library(dplyr)
library(GGally)

set.seed(42)
diamonds_sample <- diamonds |> sample_n(1000)
  
p <- diamonds_sample |>
  select(price, carat, depth, table) |>
  ggpairs() +
  labs(title = "Pairwise relationships in diamonds")

print(p)