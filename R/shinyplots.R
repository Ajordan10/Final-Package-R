#' @title ShinyPlots app
#'
#' @return the data of the x and y using widgets
#' @export
#'
#' @examples
#' \dontrun {shinyplots()}
shinyplots<- function(){
  shiny::runApp(system.file("shiny", package = "FinalProject"), launch.browser = TRUE)
}
