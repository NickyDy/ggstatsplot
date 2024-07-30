library(tidyverse)
library(ggstatsplot)
library(ggsci)

diss<-read_csv("data/diss.csv", col_types = "fffff")

ggdotplotstats(
  data = diss,
  x = elev,
  y = com,
  xlab = NULL,
  ylab = NULL,
  title = NULL,
  subtitle = NULL,
  caption = NULL,
  type = "p",
  test.value = 1500,
  bf.prior = 0.707,
  bf.message = FALSE,
  effsize.type = "g",
  conf.level = 0.95,
  tr = 0.2,
  k = 2L,
  results.subtitle = TRUE,
  point.args = list(color = "black", size = 3, shape = 16),
  centrality.plotting = TRUE,
  centrality.type = "p",
  centrality.line.args = list(color = "blue", size = 1, linetype = "dashed"),
  ggplot.component = theme(text = element_text(size = 16),
                           plot.subtitle = element_text(size = 16)),
  ggtheme = ggstatsplot::theme_ggstatsplot(),
  output = "plot")

ggsave("plot.png", width = 10, height = 5)

grouped_ggdotplotstats(
  data,
  grouping.var,
  output = "plot",
  plotgrid.args = list(),
  annotation.args = list())

ggsave("plot.png", width = 10, height = 5)