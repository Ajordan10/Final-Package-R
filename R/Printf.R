#' Print Function
#'
#'This function prints to the command line  A (1-alpha)100% confidence interval for mux-muy

#' @param ...
#'
#' @param x
#'
#' @return Rttest
#'
#'@export
print.Rttest <- function(x,...) {
  data = c(obj$data,obj$Confidence_Interval,obj$P.value,obj$Alpha)
  #Rttest$data = x[["data"]][["x"]], x[["data"]][["y"]]
  #Rttest$Alpha = alpha[["Alpha"]]
  #dataframe = data.frame(Rttest$data, Rttest$Alpha)

  #kable(dataframe)

  kable_styling(kableExtra::kable(data,align = "c", col.names = names(data())))

}


#'
#' @examples
print.Rttest <- function(x,...) {
  data = c(obj$data,obj$Confidence_Interval,obj$P.value,obj$Alpha)
  #Rttest$data = x[["data"]][["x"]], x[["data"]][["y"]]
  #Rttest$Alpha = alpha[["Alpha"]]
  #dataframe = data.frame(Rttest$data, Rttest$Alpha)

  #kable(dataframe)

  kable_styling(kableExtra::kable(data,align = "c", col.names = names(data())))

}
