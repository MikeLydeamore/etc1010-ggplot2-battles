#| title: "Pre-summarised charts with `geom_col()`"
#| category: "Part 2: Bar Charts and Summaries"
#| dataset-name: "diamonds"
#| description: "Instead of letting ggplot count the rows automatically, we will explicitly summarise the data first using `dplyr`. <br> **Step 1:** Use `group_by()` and `summarise()` to calculate the **mean price** for each `cut` of diamond. Assign this to a new variable called `cut_prices`. <br> **Step 2:** Plot `cut_prices` using `geom_col()`."
#| stub: "cut_prices <- diamonds |>\n group_by(___) |>\n  summarise(mean_price = ___(___), .groups = "drop")\n\nggplot(___, aes(x = ___, y = ___)) +\n ___()"

library(ggplot2)
library(dplyr)

cut_prices <- diamonds |>
  group_by(cut) |>
  summarise(mean_price = mean(price))

p <- ggplot(cut_prices, aes(x = cut, y = mean_price)) +
  geom_col()

print(p)