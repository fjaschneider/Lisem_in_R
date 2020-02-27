################# Runing Lisem in R #################

# How create a interface to call a program

library(shiny)

ui <- fluidPage(actionButton('run_raster', 'PCRaster!'), actionButton('run','LISEM!'))

server <- function(input,output){
  observeEvent(input$run, {
    system('cmd.exe', input = 'lisem -b -r D:/Modeling/Lisem/Geo_processing/20151224/20151224gps.run', wait = FALSE)})
  }

server1 <- function(input, output){
  observeEvent(input$run_raster, {system('cmd.exe', input = 'nutshell')})
}

shinyApp(ui,server, server1)



# Call Nutshell

system('cmd.exe', input = 'nutshell')



# Call openLISEM

system('cmd.exe', input = 'lisem -b -r D:/Modeling/Lisem/Geo_processing/20151224/20151224gps.run')
