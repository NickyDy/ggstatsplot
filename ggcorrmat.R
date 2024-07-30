library(tidyverse)
library(ggstatsplot)

df <- read_csv("~/Downloads/sales.csv")
glimpse(our_world_covid)

ggcorrmat(
  data = df,
  cor.vars = ,
  cor.vars.names = NULL,
  matrix.type = "upper",
  type = "p",
  tr = 0.2,
  partial = FALSE,
  k = 2L,
  sig.level = 0.05,
  conf.level = 0.95,
  bf.prior = 0.707,
  p.adjust.method = "holm",
  pch = "cross",
  ggcorrplot.args = list(method = "square", outline.color = "black", pch.cex = 14),
  package = "RColorBrewer",
  palette = "Dark2",
  colors = c("#E69F00", "white", "#009E73"),
  ggtheme = ggstatsplot::theme_ggstatsplot(),
  ggplot.component = theme(text = element_text(size = 16),
                           plot.subtitle = element_text(size = 16)),
  title = NULL,
  subtitle = NULL,
  caption = NULL)