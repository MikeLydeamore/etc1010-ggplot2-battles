#| title: "Diverging Palettes and Residuals"
#| category: "Week 6 Part 3: Colour Theory"
#| dataset-name: "diamonds_sample"
#| description: "Fit a linear model predicting `price` using `carat` on the `diamonds_sample` dataset. Extract the fitted values and residuals into a new tibble called `diag_data`.\nPlot `residual` against `fitted` as a scatterplot. Add a dashed red zero-line using `geom_hline()`. Map the `colour` of the points to the `residual` value, and use `scale_colour_gradient2()` with a midpoint of 0 to create a diverging palette (e.g. blue for negative, red for positive, grey for zero)."
#| prerun-code: "set.seed(42)"
#| stub: "mod <- lm(___ ~ ___, data = diamonds_sample)\ndiag_data <- tibble(\n  fitted = mod$___,\n  residual = ___(mod)\n)\n\nggplot(diag_data, aes(x = fitted, y = residual, colour = ___)) + \n  geom_point(alpha = 0.6) + \n  ___(yintercept = 0, linetype = "dashed", colour = "black") + \n  ____(low = "steelblue", mid = "grey80",\n                         high = "firebrick",\n                          midpoint = 0) + \n  labs(title = "Residual Diagnostics: Price ~ Carat",\n        x = "Fitted Values", y = "Residuals")"

library(ggplot2)
library(dplyr)

set.seed(42)
diamonds_sample <- diamonds |> sample_n(1000)

mod <- lm(price ~ carat, data = diamonds_sample)
diag_data <- tibble(
  fitted = mod$fitted.values,
  residual = resid(mod)
)

p <- ggplot(diag_data, aes(x = fitted, y = residual, colour = residual)) +
  geom_point(alpha = 0.6) +
  geom_hline(yintercept = 0, linetype = "dashed", colour = "black") +
  scale_colour_gradient2(
    low = "steelblue", mid = "grey80",
    high = "firebrick", midpoint = 0
  ) +
  labs(
    title = "Residual Diagnostics: Price ~ Carat",
    x = "Fitted Values", y = "Residuals"
  )

print(p)