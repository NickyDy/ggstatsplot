library(tidyverse)
library(ggstatsplot)

adv <- read_csv("~/Downloads/advertising.csv")

shapiro.test(adv$sales)

ggscatterstats(
  data = adv,
  x = radio,
  y = sales,
  type = "p",
  conf.level = 0.95,
  bf.prior = 0.707,
  bf.message = FALSE,
  tr = 0.2,
  k = 2L,
  results.subtitle = TRUE,
  label.var = NULL,
  label.expression = NULL,
  marginal = TRUE,
  point.args = list(size = 3, alpha = 0.4, stroke = 0),
  point.width.jitter = 0,
  point.height.jitter = 0,
  point.label.args = list(size = 3, max.overlaps = 1e+06),
  smooth.line.args = list(linewidth = 1.5, color = "blue", method = "lm", formula = y ~ x),
  xsidehistogram.args = list(fill = "#009E73", color = "black", na.rm = TRUE),
  ysidehistogram.args = list(fill = "#D55E00", color = "black", na.rm = TRUE),
  xlab = NULL,
  ylab = NULL,
  title = NULL,
  subtitle = NULL,
  caption = NULL,
  ggtheme = ggstatsplot::theme_ggstatsplot(),
  ggplot.component = theme(text = element_text(size = 16),
                           plot.subtitle = element_text(size = 16)), output = "plot")
