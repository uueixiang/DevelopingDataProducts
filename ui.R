


library(shiny)
library(lubridate)
library(ggplot2)

ui <- fluidPage(
  headerPanel("Banting Air Pollution Index Aug 2013 - Feb 2015"),
  sidebarLayout(
    sidebarPanel(
      selectInput("year",label="Select Year", choices=c(2013,2014,2015), selected=2014),
      selectInput("month",label="Select Month", choices=c(1,2,3,4,5,6,7,8,9,10,11,12), selected=1)
    ),
    mainPanel(
      h3("API Air Pullutant Index for Banting"),
      plotOutput("plot1")
    )
  )
)


