################# Runing Lisem in R #################

# How can I call a program in R

library(shiny)

ui <- fluidPage(
  actionButton('run','Run executable!')
)

server<- function(input,output)
{
  observeEvent(input$run,
               {
                 system('cmd.exe', input = '/Lisem5/Lisem.exe')
               })
}

shinyApp(ui,server)
