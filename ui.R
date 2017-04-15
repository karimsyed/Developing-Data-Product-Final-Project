#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
  titlePanel("Tree Growth by Its Age"),
  sidebarLayout(
    sidebarPanel(
      numericInput("numeric", "Which Tree?", 
                   value = 5, min = 1, max = 5, step = 1),
      
      checkboxInput("showModel1", "Show/Hide Model", value = TRUE)
    
    ),
    mainPanel(
     h3("The shiny application is developed to create a model that shows tree growth (circumference of the trunk) 
        by its age. The data used is the Orange dataset. There are data for 5 trees in the data set. You can 
        select the tree (1 to 5) from the side panel and see the plot to find the circumference of the orange 
        tree for a given age. You can also deslect the checkbox if you do not want to see the model on the plot"),
      
      plotOutput("plot1")
     
    )
  )
))