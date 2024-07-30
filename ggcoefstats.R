library(tidyverse)
library(ggstatsplot)
library(tidymodels)

adv <- read_csv("~/Downloads/advertising.csv")
cre <- read_csv("~/Downloads/credit.csv")

mod0 <- lm(sales ~ TV + radio + newspaper, data = adv)
mod1 <- glm(stress ~ ., data = stress, family = "binomial")
mod2 <- glm(stress ~ stability + flexibility + tasks + lack_car_dev, data = stress, family = "binomial")
mod3 <- glm(stress ~ stability + flexibility + tasks, data = stress, family = "binomial")

summary(mod0)
tidy(mod0) %>% arrange(-estimate) %>% gt::gt() %>% gt::fmt_number(decimals = 3)
glance(mod0)

ggcoefstats(
  mod0,
  statistic = NULL,
  conf.int = TRUE,
  conf.level = 0.95,
  k = 2L,
  exclude.intercept = FALSE,
  effectsize.type = "eta",
  meta.analytic.effect = FALSE,
  meta.type = "parametric",
  bf.message = TRUE,
  sort = "none",
  xlab = NULL,
  ylab = NULL,
  title = NULL,
  subtitle = NULL,
  caption = NULL,
  only.significant = FALSE,
  point.args = list(size = 3, color = "blue", na.rm = TRUE),
  errorbar.args = list(height = 0, na.rm = TRUE),
  vline = TRUE,
  vline.args = list(linewidth = 0.5, linetype = "dashed"),
  stats.labels = TRUE,
  stats.label.color = NULL,
  stats.label.args = list(size = 4, direction = "y", min.segment.length = 0),
  package = "RColorBrewer",
  palette = "Dark2",
  ggtheme = ggplot2::theme(text = element_text(size = 16)))
