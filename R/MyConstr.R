#' @title Constructor
#'
#'The function will create a list output
#'
#'The constructor makes an object filled with valuable material. The constructor function will investigate the data for evidence for a difference in the population variances - if the data supports the conclusion that the underlying variances are likely different or if paired = TRUE then an appropriate t-test is made to produce a list containing:
#'
#' @param x
#' @param y
#' @param alpha
#' @importFrom this is the name of the package we are importing from
#' @return Rttest
#'
#' @export myttest
#'
#' @export
#'
#' @examples
#'
library(FinalProject)

myttest = function(x, y, alpha){
  Rttest2 <- t.test(x, y, mu = 0, var.equal = TRUE, conf.level = 1-alpha)
  obj <- list(data = data.frame(x=x, y=y), Confidence_Interval = Rttest2$conf.int, P.value = Rttest2$p.value, Alpha = alpha)
  class(obj) <- "Rttest"
  obj
}
