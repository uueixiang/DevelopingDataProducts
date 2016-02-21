


library(shiny)
library(lubridate)
library(ggplot2)


ui <- fluidPage(
  headerPanel("Banting Air Pollution Index 2013-2015"),
  sidebarLayout(
    sidebarPanel(
      selectInput("year",label="Select Year", selected=2014, choices=c(2013,2014,2015)),
      selectInput("month",label="Select Month", selected=1, choices=c(1,2,3,4,5,6,7,8,9,10,11,12))
    ),
    mainPanel(
      h3("API Air Pullutant Indesx for Banting"),
      plotOutput("plot1")
    )
  )
)

server <- function(input, output){
  banting <- read.csv("API_Banting.csv")
  output$plot1 <- renderPlot({
    selecteddata <- banting[(month(banting$Date)==input$month & year(banting$Date)==input$year),]
    ggplot(data=selecteddata, aes(x=Hour, y=API)) + geom_smooth(color="red") + labs(x="Hour", y="API")
  })
}

shinyApp(ui=ui, server=server)







