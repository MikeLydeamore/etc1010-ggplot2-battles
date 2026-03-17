#| title: "Bar charts (`geom_bar()`)"
#| category: "Part 2: Bar Charts and Summaries"
#| dataset-name: "diamonds"
#| description: "Create a simple bar chart showing the frequency of diamonds for each `clarity` level. Use `geom_bar()` so ggplot counts the categories for you."
#| stub: "ggplot(diamonds, aes(x = ___)) + \n ___()"

library(ggplot2)

p <- ggplot(diamonds, aes(x = clarity)) +
  geom_bar()

plot(p)