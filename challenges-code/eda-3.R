#| title: "Structure and Polish"
#| category: "Week 6 Part 1: Pre-Modelling EDA"
#| dataset-name: "diamonds"
#| description: "Alphabetical ordering is a common trap. When plotting categorical data, order matters! Calculate the average `price` for each `clarity` category using the full `diamonds` dataset. Then, use that to build a column chart (`geom_col`) showing `avg_price` by `clarity`. Crucially, use `fct_reorder()` to sort the bars from lowest to highest average price. Finally, work on the 'data to ink' ratio by adding `theme_classic()`"
#| prerun-code: "set.seed(42)"
#| stub: "avg_price_clarity <- diamonds |> \n  group_by(___) |> \n  summarise(avg_price = ___, .groups = "drop")\n\nggplot(avg_price_clarity, aes(x = fct_reorder(___, ___), y = ___)) + \n  geom_col(fill = "steelblue") +\n  labs(title = "Average Diamond Price by Clarity",  \n       x = "Clarity",  \n       y = "Average Price (USD)") +\n  coord_flip()"

library(ggplot2)
library(dplyr)
library(forcats)

avg_price_clarity <- diamonds |>
  group_by(clarity) |>
  summarise(avg_price = mean(price), .groups = "drop")

p <- ggplot(avg_price_clarity, aes(x = fct_reorder(clarity, avg_price), y = avg_price)) +
  geom_col(fill = "steelblue") +
  labs(
    title = "Average Diamond Price by Clarity",
    x = "Clarity",
    y = "Average Price (USD)"
  ) +
  coord_flip() +
  theme_classic()

print(p)