library(shiny)
library(ggplot2)
data(mtcars)

function(input, output) {
  
  dataset <- mtcars
  output$plot <- renderPlot({
    
    x <- input$x
    y <- input$y
    
    formula <- paste(x,"~",y)
    
    fit <- lm(as.formula(formula), data = dataset)
    
    par(mfrow=c(2,2))
    plot(fit)
    
  }, height=500)
  
}