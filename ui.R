library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Example plot"),
  sidebarPanel(
    sliderInput('mu', 'Guess at the mean',value = 70, 
                min = 62, max = 74, step = 0.05,),
    sliderInput('std', 'Guess at the std',value = 70, 
                min = 62, max = 74, step = 0.05,),
    sliderInput('mu2', 'Guess at the mu2',value = 70, 
                min = 62, max = 74, step = 0.05,),
  ),
  mainPanel(
    plotOutput('newHist')
  )
))