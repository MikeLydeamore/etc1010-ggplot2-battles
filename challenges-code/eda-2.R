#| title: "The Pivot Trick"
#| category: "Week 6 Part 1: Pre-Modelling EDA"
#| dataset-name "diamonds_sample"
#| description: "If you solely want to check the linearity of multiple predictors against the response variable without cluttering the screen with density plots, the `pivot_longer()` trick is your friend. <br><br> Select `price`, `carat`, `depth`, and `table` from `diamonds_sample`. Pivot all columns EXCEPT `price` into a long format. Then, create a faceted scatterplot (`facet_wrap`) with the predictor value on the x-axis and `price` on the y-axis. Add a linear trend line with `geom_smooth(method = "lm")`. Remember to use `scales = "free_x"`."
#| prerun-code: "set.seed(42)"
#| stub: "diamonds_sample |> \n  select(___) |> \n  pivot_longer(\n    cols = c(___),\n    names_to = "predictor",\n    values_to = "value"\n  ) |> \n  ggplot(aes(x = ___, y = ___)) +\n  geom_point(alpha = 0.4) +\n  geom_smooth(method = "lm", se = FALSE, colour = "red") +\n  ____(~ predictor, scales = "free_x") +\n  labs(title = "Linearity check: Price against predictors",\n       x = "Predictor Value",\n       y = "Price (USD)")"

library(ggplot2)
library(dplyr)
library(tidyr)
library(forcats)

set.seed(42)
diamonds_sample <- diamonds |> sample_n(1000)
  
p <- diamonds_sample |>
  select(price, carat, depth, table) |>
  pivot_longer(
    cols = c(carat, depth, table),
    names_to = "predictor",
    values_to = "value"
  ) |>
  ggplot(aes(x = value, y = price)) +
  geom_point(alpha = 0.4) +
  geom_smooth(method = "lm", se = FALSE, colour = "red") +
  facet_wrap(~predictor, scales = "free_x") +
  labs(
    title = "Linearity check: Price against predictors",
    x = "Predictor Value",
    y = "Price (USD)"
  )

print(p)