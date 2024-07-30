library(tidyverse)
library(ggstatsplot)
#library(unikn)
#library(jcolors)

diss<-read_csv("diss/diss.csv", col_types = "fffff")

data %>% 
	filter(gender == "M")->df
	shapiro.test(df$pre_op_efgr)

wil %>% 
	ggbetweenstats(
  name,
  value,
  plot.type = "box",
  type = "np",
  pairwise.comparisons = T,
  pairwise.display = "significant",
  p.adjust.method = "holm",
  effsize.type = "unbiased",
  bf.prior = 0.707,
  bf.message = FALSE,
  results.subtitle = TRUE,
  xlab = "Race",
  ylab = NULL,
  caption = NULL,
  title = NULL,
  subtitle = NULL,
  k = 2L,
  var.equal = FALSE,
  conf.level = 0.95,
  nboot = 100L,
  tr = 0.2,
  centrality.plotting = TRUE,
  centrality.type = "np",
  centrality.point.args = list(size = 5, color = "darkred"),
  centrality.label.args = list(size = 4, nudge_x = 0.4, segment.linetype = 4,
    min.segment.length = 0),
  outlier.tagging = FALSE,
  outlier.label = NULL,
  outlier.coef = 1.5,
  outlier.shape = 19,
  outlier.color = "black",
  outlier.label.args = list(size = 3),
  point.args = list(position = ggplot2::position_jitterdodge(dodge.width = 0.6),
    alpha = 0.4, size = 3, stroke = 0),
  violin.args = list(width = 0.5, alpha = 0.2),
  ggsignif.args = list(textsize = 3, tip_length = 0.01),
  ggtheme = ggstatsplot::theme_ggstatsplot(),
  package = "RColorBrewer",
  palette = "Dark2",
  ggplot.component = theme(text = element_text(size = 16),
    plot.subtitle = element_text(size = 16)),
  output = "plot")

ggsave("plot.png", width = 10, height = 5)

grouped_ggbetweenstats(
  data,
  grouping.var,
  output = "plot",
  plotgrid.args = list(),
  annotation.args = list())

ggsave("plot.png", width = 10, height = 5)
