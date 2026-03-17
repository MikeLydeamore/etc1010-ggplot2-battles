#| title: "Bar charts with fill colour"
#| category: "Part 2: Bar Charts and Summaries"
#| dataset-name: "diamonds"
#| description: "Modify your plot from Question 6 to map the `cut` variable to the interior colour of the bars. Note: Ensure you use the correct aesthetic (it is not `colour`)."
#| stub: "ggplot(___, aes(x = ___, ___ = ___)) + \n geom_bar())"

library(ggplot2)

p <- ggplot(diamonds, aes(x = clarity, fill = cut)) +
  geom_bar()

plot(p)