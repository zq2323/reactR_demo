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
  )
)

server <- function(input, output, session) {

  observe(print(input$plop))
}

shinyApp(ui, server)
