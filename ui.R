shinyUI(fluidPage(
    titlePanel("24 Hours Mean Temperature"),
    
    mainPanel(
        
        tabsetPanel(
            tabPanel("About",
                     mainPanel(
                         img(src='temperature.ico'),
                         h4("24 Hours Mean Temperature"),
                         br(),
                         br(),
                         p("This interactive web application is use for exploring and analyzing the 24 Hours Mean Temperature data."),
                         br(),
                         p("The data downloaded is converted to a Time Series object and follow by decomposing the time series into trend + season components without considering about the best fit model.
                           This is due to demo purpose of showing how to create and share data product and the different is usually less than 1 degree celsius."),
                         br(),
                         p("For more details about this website and data use, please read ", a("sildes", href = "http://tydatasc.github.io/Developing-Data-Products",target="_blank"))
                         )
                     ),
            
            
            tabPanel("Summary",
                     sidebarPanel(sliderInput("Year", "Year:", min=1984, max=2014, value=2000, sep="")),
                     mainPanel(fluidRow(
                         column(4,h4("Year Selected from: 1984 to")),
                         column(4,h4("Highest Temp:")),
                         column(4,h4("Lowest Temp:"))
                         ),
                         
                         fluidRow(
                             br(),
                             column(4,verbatimTextOutput("year")),
                             column(4,verbatimTextOutput("high")),
                             column(4,verbatimTextOutput("low"))
                             ),
                     
                        
                         hr(),
                         fluidRow(tableOutput("table"))
                         )
                     ),
            
            tabPanel("Result",
                     fluidRow(
                         h5(strong("Actual"), verbatimTextOutput("actualdf")),
                         h5(strong("Forecast"),verbatimTextOutput("summary")),
                         plotOutput("Plot"))
                     )
        )
    )
))                                                                                                                                        