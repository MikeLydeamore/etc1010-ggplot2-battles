#| title: "Bar positions"
#| category: "Part 2: Bar Charts and Summaries"
#| dataset-name: "diamonds"
#| description: "This battle will need two steps. First, modify the stacked bar plot from Question 7 to place the `cut` categories side-by-side. Then, modify the plot to show 100% stacked proportions using `position = "fill"`. Make sure to update the y-axis label since it no longer represents raw counts. You can draw the plots on top of each other by 'dividing' them, which is a feature of the `patchwork` package."
#| stub: "p1 <- ggplot(diamonds, aes(x = clarity, fill = cut)) + \n geom_bar(position = "___")\n\np2 <- ggplot(diamonds, aes(x = clarity, fill = cut)) + \n geom_bar(position = "___") +\n labs(y = "___")\n\np1 / p2"

library(ggplot2)
library(patchwork)

p1 <- ggplot(diamonds, aes(x = clarity, fill = cut)) +
  geom_bar(position = "dodge")

p2 <- ggplot(diamonds, aes(x = clarity, fill = cut)) +
  geom_bar(position = "fill") +
  labs(y = "Proportion")

print(p1 / p2)