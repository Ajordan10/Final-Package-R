#' @title myconstructor
#'
#' @param x xvalue
#' @param y yvalue
#' @param alpha alpha value
#'
#' @return a list
#' @export

#'
#' @examples
#' \dontrun {myttest(x, y,alpha)}

myttest = function(x, y, alpha){
  Rttest2 <- t.test(x, y, mu = 0, var.equal = TRUE, conf.level = 1-alpha)
  obj <- list(data = data.frame(c(x=x, y=y)), Confidence_Interval = Rttest2$conf.int, P.value = Rttest2$p.value, Alpha = alpha)
  class(obj) <- "Rttest"
  obj
}
