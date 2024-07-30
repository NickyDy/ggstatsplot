library(tidyverse)
library(ggstatsplot)

options(scipen = 25)

diss<-read_csv("diss/diss.csv", col_types = "fffff")

pairwise_comparisons(
  data = df,
  x = churn,
  y = user_account_balance_last,
  subject.id = NULL,
  type = "np",
  paired = FALSE,
  var.equal = FALSE,
  tr = 0.2,
  bf.prior = 0.707,
  p.adjust.method = "holm",
  k = 2L)

combine_plots(
  plotlist = list(p1, p2),
  plotgrid.args = list(),
  annotation.args = list(),
  guides = "collect")