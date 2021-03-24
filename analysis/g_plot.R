
library(ggplot2)

p <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
    geom_point() +
    theme_bw()

ggsave(
    plot = p,
    filename = "outputs/g_plot.pdf"
)


