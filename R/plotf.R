#' @title Plot Title
#'
#' @description The plot title creates boxplots of the data when non - paired data is analyzed.
#'It also will make a boxplot of differences in data when paired = TRUE
#'The Confidence Interval for the difference of means is plotted inside the boxplot of differences.
#'

#' @param x
#' @param ... the remaining arguments
#'
#'
#' @return A plot of the data
#' @importFrom ggplot2 ggplot aes geom_point
#' @export
#'
#'
#' @examples \dontrun {plot.Rttest}

plot.Rttest = function(x,...){
  y <- NULL
  #?data = c(obj$data,obj$Confidence_Interval,obj$P.value,obj$Alpha)
  data2 -> data.frame(x=x$x, y=x$y)
  ggplot(data2, aes(x=x, y=y)) +geom_point()


  #quartz; boxplot(obj$data)
  #plot.Rttest(data = data, x = '', y = '')
}




