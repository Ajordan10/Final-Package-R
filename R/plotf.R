#' Plot Title
#'
#'The plot title creates boxplots of the data when non - paired data is analyzed.
#'It also will make a boxplot of differences in data when paired = TRUE
#'The Confidence Interval for the difference of means is plotted inside the boxplot of differences.
#'

#' @param x
#' @param y
#' @param pch
#' @param bg
#' @param cex
#'
#' @return A plot of the data
#' @export
#'
#' @examples
plot.myttest = function(x, y, pch =21, bg = "blue", cex = 3){
  plot(data,
       pch = pch,
       bg = bg,
       x = "x",
       y = "y"
  )
}
Cat <- rep(c("A", "B"), c(x,y))
data.frame(MeanValue = c(x,y), TheData = Cat) -> data
library(ggplot2)
TheData <- ggplot(data) + geom_boxplot(aes(x = TheData, y = MeanValue, fill = TheData))
print(TheData)
