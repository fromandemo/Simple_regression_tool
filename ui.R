library(shiny)
library(ggplot2)

dataset <- mtcars

fluidPage(
  
  titlePanel(""),
  
  sidebarPanel(
    
    selectInput('x', 'X', names(dataset),names(dataset)[[1]]),
    selectInput('y', 'Y', names(dataset), names(dataset)[[2]])
  ),
  
  mainPanel(
    h2("Simple regression model tool"),
    p("This Shiny app allows you to create a simple regression model where X is explained by Y in an interactive fashion."),
    p("The dataset used in this example is 'mtcars', execute '?mtcars' for more help."),
    plotOutput('plot')
  )
)