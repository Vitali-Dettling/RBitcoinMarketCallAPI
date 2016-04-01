#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$kraken = renderDataTable({ 
    
      returnTable = if(exists("bitstampAPI", mode = "function")){
        source("RBitcoinAPI.R")
        btceAPI()}
      
      return(returnTable)
      
    })
  
  output$bitstamp = renderDataTable({ 

    returnTable = if(exists("krakenAPI", mode = "function")){
      source("RBitcoinAPI.R")
      btceAPI()}
    
    return(returnTable)
    
  })
  
  output$btce = renderDataTable({ 
  
    returnTable = if(exists("btceAPI", mode = "function")){
      source("RBitcoinAPI.R")
      btceAPI()}
    
    return(returnTable)
    
  })

})
