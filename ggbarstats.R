library(tidyverse)
library(ggstatsplot)

diss<-read_csv("diss/diss.csv")
glimpse(ath)
summary(ath)

cosm %>% 
	ggbarstats(
	  q7,
	  age,
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
		legend.title = "Answer:",
		xlab = "Age",
		ylab = NULL,
		ggtheme = ggstatsplot::theme_ggstatsplot(),
		package = "RColorBrewer",
		palette = "Dark2",
		ggplot.component = theme(text = element_text(size = 14), 
														 plot.subtitle = element_text(size = 14)))

ggsave("plot.png", width = 8, height = 4.5)

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

cosm %>%
  count(age, q9) %>% 
  group_by(age) %>% 
  mutate(perc = n / sum(n) * 100) %>% 
  ggplot(aes(age, perc, fill = q9)) +
  geom_col(color = "black") +
  geom_text(aes(label = paste0(round(perc, 1), "%")), 
            show.legend = F, color = "white", fontface = "bold",
            position = position_stack(vjust = 0.5), size = 4) +
  scale_fill_brewer(palette = "Dark2") +
  labs(x = "Age", y = "Percent", fill = "Answer:") +
  theme(text = element_text(size = 16))
