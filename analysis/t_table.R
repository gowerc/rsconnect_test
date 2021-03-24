library(htmlTable)
library(dplyr)


dat <- iris %>% 
    group_by(Species) %>% 
    summarise(
        mean  = mean(Sepal.Length),
        min = min(Sepal.Length),
        max = max(Sepal.Length)
    )

tab <- dat %>% 
    addHtmlTableStyle(
        css.cell = "padding-left:10px; padding-right:10px;"
    ) %>% 
    htmlTable(
        header = c("Species", "Mean", "Min", "Max"),
        rnames = FALSE
    )


sink("./outputs/t_table.html")
cat(as.character(tab))
sink()
