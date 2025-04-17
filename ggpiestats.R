library(tidyverse)
library(ggstatsplot)
#library(unikn)
#library(jcolors)

diss<-read_csv("diss/diss.csv", col_types = "fffff")
cosm <- read_csv("~/Downloads/cosm.csv")

cosm %>% 
  filter(Age == "21-25") %>% 
  ggpiestats(
  x = q2,
  y = NULL,
  counts = NULL,
  type = "parametric",
  paired = FALSE,
  results.subtitle = TRUE,
  label = "percentage",
  label.args = list(direction = "both"),
  label.repel = FALSE,
  k = 2L,
  proportion.test = results.subtitle,
  perc.k = 0L,
  bf.message = FALSE,
  ratio = NULL,
  conf.level = 0.95,
  sampling.plan = "indepMulti",
  fixed.margin = "rows",
  prior.concentration = 1,
  title = NULL,
  subtitle = NULL,
  caption = NULL,
  legend.title = NULL,
  ggtheme = ggstatsplot::theme_ggstatsplot(),
  package = "RColorBrewer",
  palette = "Dark2",
  ggplot.component = theme(text = element_text(size = 16),
                           plot.subtitle = element_text(size = 14)),
  output = "plot")

ggsave("plot.png", width = 10, height = 5)

cosm %>% 
  grouped_ggpiestats(
  x = q10,
  grouping.var = Age,
  output = "plot",
  legend.title = "Answer:",
  bf.message = FALSE,
  plotgrid.args = list(),
  annotation.args = list())

ggsave("plot.png", width = 10, height = 5)