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
#' @export  plot.Rttest
#'
#' @export
#'
#' @examples

plot.Rttest = function(x, y, xlab ="", ylab=""){
  data = c(obj$data,obj$Confidence_Interval,obj$P.value,obj$Alpha)



  #quartz; boxplot(obj$data)
  plot.Rttest(data = data, x = '', y = '')
}



