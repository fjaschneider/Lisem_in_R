################# Runing Lisem in R #################

# How can I call a program in R

library(shiny)

ui <- fluidPage(actionButton('run','Run executable!'))

server<- function(input,output){
  observeEvent(input$run, {
    system('cmd.exe', input = 'lisem -b -no -r D:/Modeling/Lisem/Geo_processing/20151224/20151224gps.run')
  })
  }

shinyApp(ui,server)

