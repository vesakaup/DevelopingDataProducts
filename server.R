library(shiny)

pingu = read.csv("data/penguins3.csv")

shinyServer(function(input, output, session) {
    
    # Combine the selected variables into a new data frame
    inputpingu <- reactive({
        pingu[, c(input$xcol, input$ycol)]
    })
    
    clusters <- reactive({
        kmeans(inputpingu(), input$clusters)
    })
    
    output$plot1 <- renderPlot({
        par(mar = c(5.1, 4.1, 0, 1))
        plot(inputpingu(),
             col = clusters()$cluster,
             pch = 20, cex = 3)
        points(clusters()$centers, pch = 3, cex = 4, lwd = 2)
    })
    
    
    output$summary <- renderPrint({
        dataset <- clusters()
        dataset
    })
})