# This app takes a takes a standard normal statistic and displays the 
# probability of achieving that value or greater in a standard normal
# distribution. In other words it takes a (z) value and gives a p-value.

library(shiny)

ui <- fluidPage(
  titlePanel("P-value associated with Z-score"),
  sidebarLayout(
    sidebarPanel(
      numericInput("z", "Z-score", 0)),
    mainPanel(
      textOutput("p")
    )
  )
)

server <- function(input, output) {
  output$p <- reactive({pnorm(input$z)})
}

shinyApp(ui = ui, server = server)