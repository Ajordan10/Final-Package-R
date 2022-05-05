#
#
#

library(shiny)

# Define UI for application that draws a histogram
#object name is UI

shinyplots <- function(){
  shiny::runApp(system.file("shiny", package = "FinalProject"), launch.browser = TRUE)
}
ui <- fluidPage(

    # Application title
    titlePanel("Shinny for Final Project"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("x_varb", label="mu",choices=c("x", "y"))
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("obj"),
           width = 9
        )
    )

)
# Define server logic required to draw a histogram

server <- function(input, output) {

  output$obj <- renderPlot({
    data <- data.frame(x=x, y=y)
        #ggplot
    ggplot(data, aes_string(input$x_varb, input$y_varb, y=y))+
      geom_point()

    }, res = 96)
}


# Run the application
shinyApp(ui = ui, server = server)
