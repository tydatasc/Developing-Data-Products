shinyServer(function(input, output){
    #output slider year selection
    output$year <- renderPrint(input$Year)
    
    #subset dataframe with slider year selection
    subdf <- reactive(df[1:(input$Year - 1983),])
    
    #oupt highest temp with slider year selection 
    output$high <- renderPrint({
        highds <- subdf()
        max(highds)})
    
    #oupt lowest temp with slider year selection
    output$low <- renderPrint({
        lowds <- subdf()
        min(lowds)})
    
    #oupt table with slider year selection
    output$table <- renderTable(subdf())
    
    #convert dataframe to time series
    tsdf <- reactive(ts(as.vector(t(as.matrix(subdf()))), start = c(1984, 1), end = c(input$Year,12), frequency=12))
    
    #fit time series linear regression
    fit <- reactive({
        fitds <- tsdf()
        tslm(fitds ~ trend + season)})
    
    #forecast 
    f <- reactive(forecast(fit(), h=12,level=c(80,95)))
    
    #output forecast data
    output$summary <- renderPrint({
        fds <- f()
        (fds)})
    
    #output actual data
    actualdf <- reactive(df[input$Year - 1982,])
    output$actualdf <- renderPrint({
        actual <- actualdf() 
        (actual)})
    
    #output plot
    output$Plot <- renderPlot({
        fds <- f()
        plot(fds, ylab="celsius", xlab="year")
        fitds <- fit()
        lines(fitted(fitds),col="blue")})
    })