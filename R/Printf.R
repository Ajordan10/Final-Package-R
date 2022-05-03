#' Print Function
#'
#'This function prints to the command line  A (1-alpha)100% confidence interval for mux-muy

#' @param x
#' @param ...table variables
#'
#' @return
#' @export print.Rttest
#'
#' @export
#'
#' @examples
print.Rttest <- function(x,...) {
  data = c(Rttest$data,Rttest$Confidence_Interval,Rttest$P.value,Rttest$Alpha)
  #Rttest$data = x[["data"]][["x"]], x[["data"]][["y"]]
  #Rttest$Alpha = alpha[["Alpha"]]
  #dataframe = data.frame(Rttest$data, Rttest$Alpha)

  #kable(dataframe)

  kable_styling(kableExtra::kable(data,align = "c", col.names = names(data())))

}
