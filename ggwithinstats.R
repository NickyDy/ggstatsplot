library(tidyverse)
library(ggstatsplot)
#library(unikn)
#library(jcolors)
#library(ggsci)

num %>% filter(treatment %in% c("pre_test", "post_test")) %>% 
  mutate(treatment = fct_relevel(treatment, c("pre_test", "post_test")))->num

sds %>% filter(timepoint == "timepoint_1")->shap
	shapiro.test(shap$value)
	
wil <- read_csv("wil.csv") %>% pivot_longer(everything())

	wil %>% mutate(name = fct_relevel(name, c("before", "after"))) %>% 
	  ggwithinstats(
		name,
		value,
		type = "np",
		pairwise.comparisons = TRUE,
		pairwise.display = "significant",
		p.adjust.method = "holm",
		effsize.type = "unbiased",
		bf.prior = 0.707,
		bf.message = FALSE,
		results.subtitle = TRUE,
		xlab = NULL,
		ylab = NULL,
		caption = NULL,
		title = NULL,
		subtitle = NULL,
		k = 2L,
		conf.level = 0.95,
		nboot = 100L,
		tr = 0.2,
		centrality.plotting = TRUE,
		centrality.type = "np",
		centrality.point.args = list(size = 4, color = "darkred"),
		centrality.label.args = list(size = 4, nudge_x = 0.4, segment.linetype = 4),
		centrality.path = TRUE,
		centrality.path.args = list(size = 1, color = "red", alpha = 0.5),
		point.args = list(size = 3, alpha = 0.5),
		point.path = TRUE,
		point.path.args = list(alpha = 0.5, linetype = "dashed"),
		outlier.tagging = FALSE,
		outlier.label = NULL,
		outlier.coef = 1.5,
		outlier.label.args = list(size = 3),
		boxplot.args = list(width = 0.2, alpha = 0.5),
		violin.args = list(width = 0.5, alpha = 0.2),
		ggsignif.args = list(textsize = 3, tip_length = 0.01),
		ggtheme = ggstatsplot::theme_ggstatsplot(),
		package = "RColorBrewer",
		palette = "Dark2",
		ggplot.component =theme(text = element_text(size = 14), plot.subtitle = element_text(size = 14)),
		output = "plot")
ggsave("wilcoxon.png", width = 10, height = 5)

grouped_ggwithinstats(
  data,
  grouping.var,
  output = "plot",
  plotgrid.args = list(),
  annotation.args = list())
ggsave("plot.png", width = 10, height = 5)
