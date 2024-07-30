
library(statsExpressions)
library(tidyverse)

load("diss.RData")
load("climate.RData")

#Expression and dataframe for one-sample t-test
one_sample_test(
  data = diss,
  x = s_ha,
  type = "np",
  test.value = 45,
  alternative = "two.sided",
  k = 2L,
  conf.level = 0.95,
  tr = 0.2,
  bf.prior = 0.707,
  effsize.type = "g",
  top.text = NULL)

#Expression and dataframe for two-sample t-test
two_sample_test(
  data = df,
  x = churn,
  y = user_account_balance_last,
  subject.id = NULL,
  type = "np",
  paired = FALSE,
  alternative = "two.sided",
  k = 2L,
  conf.level = 0.95,
  effsize.type = "g",
  var.equal = FALSE,
  bf.prior = 0.707,
  tr = 0.2,
  nboot = 100L,
  top.text = NULL)

#A dataframe with an expression for one-way ANOVA
expr_oneway_anova(
  data,
  x,
  y,
  subject.id = NULL,
  type = "parametric",
  paired = FALSE,
  k = 2L,
  conf.level = 0.95,
  effsize.type = "omega",
  var.equal = FALSE,
  bf.prior = 0.707,
  tr = 0.2,
  nboot = 100,
  top.text = NULL)

#A dataframe with expression for correlation analysis
expr_corr_test(
  data,
  x,
  y,
  type = "parametric",
  k = 2L,
  conf.level = 0.95,
  tr = 0.2,
  bf.prior = 0.707,
  top.text = NULL)

#Expressions for contingency table analysis
expr_contingency_tab(
  data,
  x,
  y = NULL,
  paired = FALSE,
  type = "parametric",
  counts = NULL,
  ratio = NULL,
  k = 2L,
  conf.level = 0.95,
  sampling.plan = "indepMulti",
  fixed.margin = "rows",
  prior.concentration = 1,
  top.text = NULL)

#Expressions for meta-analysis
expr_meta_random(
  data,
  type = "parametric",
  random = "mixture",
  k = 2L,
  conf.level = 0.95,
  top.text = NULL)
