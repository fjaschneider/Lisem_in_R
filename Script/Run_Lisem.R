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
                 system('cmd.exe', input = '/Lisem5/Lisem.exe -b –no –r 20150920gps.run –c [No Erosion simulation=0]')
               })
}

shinyApp(ui,server)

