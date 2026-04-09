#| title: "Sequential Palettes"
#| category: "Week 6 Part 3: Colour Theory"
#| dataset-name: "diamonds"
#| description: "First, calculate the average `carat` grouped by `cut` and `color`. Then, create a tile plot (`geom_tile`) where x = `color`, y = `cut`, and fill = `avg_carat`. Use `scale_fill_viridis_c()` to apply a colourblind-safe sequential palette."
#| stub: "carat_heatmap <- diamonds |>  \n  group_by(___, ___) |>  \n  summarise(avg_carat = mean(___), .groups = "drop")  \n\nggplot(carat_heatmap, aes(x = color, y = cut, fill = avg_carat)) +  \n  ___(colour = "white", linewidth = 1) + \n  ____() + \n  labs(title = "Average Carat by Cut and Color", \n       x = "Color", y = "Cut", fill = "Avg Carat") +  \n  theme_minimal()"

library(ggplot2)
library(dplyr)

carat_heatmap <- diamonds |>
  group_by(cut, color) |>
  summarise(avg_carat = mean(carat), .groups = "drop")

p <- ggplot(carat_heatmap, aes(x = color, y = cut, fill = avg_carat)) +
  geom_tile(colour = "white", linewidth = 1) +
  scale_fill_viridis_c() +
  labs(
    title = "Average Carat by Cut and Color",
    x = "Color", y = "Cut", fill = "Avg Carat"
  ) +
  theme_minimal()

print(p)