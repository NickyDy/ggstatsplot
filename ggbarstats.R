library(tidyverse)
library(ggstatsplot)

diss<-read_csv("diss/diss.csv")
glimpse(ath)
summary(ath)

otto %>% 
	ggbarstats(
		participant_gender,
		score,
		counts = NULL,
		type = "p",
		paired = FALSE,
		results.subtitle = TRUE,
		label = "percentage",
		label.args = list(alpha = 1, fill = "white"),
		k = 2L,
		perc.k = 0L,
		bf.message = F,
		ratio = NULL,
		conf.level = 0.95,
		sampling.plan = "indepMulti",
		fixed.margin = "rows",
		prior.concentration = 1,
		title = NULL,
		subtitle = NULL,
		caption = NULL,
		legend.title = "Gender",
		xlab = "Score",
		ylab = NULL,
		ggtheme = ggstatsplot::theme_ggstatsplot(),
		package = "RColorBrewer",
		palette = "Dark2",
		ggplot.component = theme(text = element_text(size = 16), 
														 plot.subtitle = element_text(size = 16)))
ggsave("plot.png", width = 10, height = 5)

grouped_ggbarstats(
  data = ,
  x,
  y,
  counts = NULL,
  grouping.var,
  title.prefix = NULL,
  output = "plot",
  plotgrid.args = list(),
  title.text = NULL,
  title.args = list(size = 16, fontface = "bold"),
  caption.text = NULL,
  caption.args = list(size = 10),
  sub.text = NULL,
  sub.args = list(size = 12))

ggsave("plot.png", width = 10, height = 5)