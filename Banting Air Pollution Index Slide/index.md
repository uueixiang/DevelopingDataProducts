---
title: "Banting Air Pullutant Index"
author: "Weixiang Lim"
highlighter: highlight.js
output: pdf_document
job: null
knit: slidify::knit2slides
mode: selfcontained
hitheme: tomorrow
subtitle: Aug 2013 - Feb 2015
framework: io2012
widgets: []
---

## Introduction
Banting Air Pullutant Index app provides the hourly changes of the API reading in Banting, based on the selected Month and Year. It gives the trends prediction of the API of Banting. 

The data can be obtained from http://www.data.gov.my/, it's measured by the Malaysian Meteorological Department.

The data in this application only covered the measured API from August 2013 and February 2015.

---

## Data

```r
banting <- read.csv("API_Banting.csv")
str(banting)
```

```
## 'data.frame':	13296 obs. of  6 variables:
##  $ Station.No: int  41 41 41 41 41 41 41 41 41 41 ...
##  $ Location  : Factor w/ 1 level "Banting": 1 1 1 1 1 1 1 1 1 1 ...
##  $ Date      : Factor w/ 554 levels "2013-08-01","2013-08-02",..: 1 1 1 1 1 1 1 1 1 1 ...
##  $ Hour      : int  1 2 3 4 5 6 7 8 9 10 ...
##  $ API       : int  66 67 67 67 67 67 66 66 66 66 ...
##  $ Pollutant : Factor w/ 4 levels "*","0","a","c": 1 1 1 1 1 1 1 1 1 1 ...
```

---

## Shiny App
This shiny app can be viewed at the following link:

http://uueixiang.shinyapps.io/BantingAirPollutionIndex/

This application demonstrated the features in Shiny application that allows creation of interactive R programs embedded into web page.

1. The Select Box input is used to receive user action
2. Plot Output/Data Table Output is used to display the outcome of user selection.
3. The reactive output is displayed in the graph as a result of server processes.

Based on the outcome of the graph, we can observe that API readings usually peak around 3-4pm in the evening.

---

## Github Repo

The code for the shiny app can be obtained at the following github repo: 

http://github.com/uueixiang/DevelopingDataProducts

This repo also contains all the codes and data involved.
* README.md
* API_Banting data
* Shiny app code: ui.R and server.R
* Slidify Rmarkdown of this presentation


