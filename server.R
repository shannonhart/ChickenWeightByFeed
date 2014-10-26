library(shiny)
library(datasets)

data(chickwts)


shinyServer(
  function(input, output) {
    output$wt <- renderText({ as.character(mean(chickwts[chickwts$feed==input$f,1])  )    })


  })