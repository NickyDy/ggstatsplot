library(tidyverse)
library(ggstatsplot)
library(ggsci)

diss<-read_csv("data/diss.csv", col_types = "fffff")

gghistostats(
	data = diss,
	x = s_ha,
	binwidth = NULL,
	xlab = NULL,
	title = NULL,
	subtitle = NULL,
	caption = NULL,
	type = "np",
	test.value = 45,
	bf.prior = 0.707,
	bf.message = F,
	effsize.type = "g",
	conf.level = 0.95,
	tr = 0.2,
	k = 2L,
	ggtheme = ggstatsplot::theme_ggstatsplot(),
	results.subtitle = TRUE,
	bin.args = list(color = "black", fill = "grey50", alpha = 0.7),
	centrality.plotting = TRUE,
	centrality.type = "np",
	centrality.line.args = list(color = "blue", linewidth = 1, linetype = "dashed"),
	normal.curve = FALSE,
	normal.curve.args = list(linewidth = 2),
	ggplot.component = theme(text = element_text(size = 16), plot.subtitle = element_text(size = 16))
)
ggsave("plot.png", width = 10, height = 5)

grouped_gghistostats(
  data,
  x,
  grouping.var,
  binwidth = NULL,
  output = "plot",
  plotgrid.args = list(),
  annotation.args = list())

ggsave("plot.png", width = 10, height = 5)