library(shiny)

# load this package reactstrapTest first
devtools::load_all()
library(reactstrapTest)




ui <- fluidPage(
  theme = bslib::bs_theme(version = "4"),

  #test the component
  button_group(
    "plop",
    "A group of buttons",
    choices = names(mtcars)
  ),

  editableInput('table1', "text"),
  verbatimTextOutput("bar")
)

server <- function(input, output, session) {

  observe(print(input$plop))

  output$bar <- renderPrint({
    cat("Table 1: ", input$table1)
  })

}

shinyApp(ui, server)
