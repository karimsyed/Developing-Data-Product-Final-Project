#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyServer(function(input, output) {
 

  output$plot1 <- renderPlot({
   
    tree<-input$numeric
    
    newOrange<-subset(Orange, Tree==tree)
    model <- lm(circumference ~ age, data = newOrange)
    plot(newOrange$age, newOrange$circumference, xlab = "Age", 
         ylab = "Circumference", bty = "n", pch = 16,
         xlim = c(10, 1500), ylim = c(0, 300))
   
    if(input$showModel1){
      abline(model, col = "red", lwd = 2)
    }
    
  })
  
 
    
  
  
  
  
  
})