#| title: "Qualitative Palettes"
#| category: "Week 6 Part 3: Colour Theory"
#| dataset-name: "diamonds"
#| description: "Create a boxplot of `price` grouping by `cut`. Map `cut` to the `fill` aesthetic, and apply the qualitative `"Set2"` palette from RColorBrewer using `scale_fill_brewer()`."
#| stub: "ggplot(diamonds, aes(x = cut, y = price, fill = ___)) +  \n  ___() +  \n  ____(palette = "Set2") +  \n  labs(title = "Price Distribution by Cut",  \n       x = "Cut",\n       y = "Price (USD)") + \n  theme_minimal()"

library(ggplot2)
library(dplyr)

p <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_boxplot() +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title = "Price Distribution by Cut",
    x = "Cut", y = "Price (USD)"
  ) +
  theme_minimal()

print(p)