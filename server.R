


library(shiny)
library(lubridate)
library(ggplot2)

server <- function(input, output){
  banting <- read.csv("API_Banting.csv")
  output$plot1 <- renderPlot({
    selecteddata <- banting[(month(banting$Date)==input$month & year(banting$Date)==input$year),]
    ggplot(data=selecteddata, aes(x=Hour, y=API)) + geom_smooth(color="red") + labs(x="Hour", y="API")
  })
}


