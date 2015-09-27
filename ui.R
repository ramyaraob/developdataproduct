library(shiny)



shinyUI(
  pageWithSidebar(
    headerPanel("Predicting iris family for given sepal, petal widths and lengths"),
    sidebarPanel(h3("Iris parameters"),
                 
                 sliderInput('sepLen', 
                             "Sepal length", 
                             1, 
                             25,
                             min(iris$Sepal.Length),
                             step=NULL,
                             round=FALSE,
                             format=NULL,
                             locale=NULL,
                             ticks=FALSE,
                             animate = FALSE, 
                             width = NULL, 
                             sep = ",", 
                             pre = NULL, 
                             post = NULL
                 ),
                 sliderInput('sepWid', 
                             "Sepal width", 
                             1, 
                             25,
                             min(iris$Sepal.Width),
                             step=NULL,
                             round=FALSE,
                             format=NULL,
                             locale=NULL,
                             ticks=FALSE,
                             animate = FALSE, 
                             width = NULL, 
                             sep = ",", 
                             pre = NULL, 
                             post = NULL
                 ),
                 sliderInput('petLen', 
                             "Petal length", 
                             1, 
                             25,
                             min(iris$Petal.Length),
                             step=NULL,
                             round=FALSE,
                             format=NULL,
                             locale=NULL,
                             ticks=FALSE,
                             animate = FALSE, 
                             width = NULL, 
                             sep = ",", 
                             pre = NULL, 
                             post = NULL
                 ),
                 sliderInput('petWid', 
                             "Petal width", 
                             1, 
                             25,
                             min(iris$Petal.Width),
                             step=NULL,
                             round=FALSE,
                             format=NULL,
                             locale=NULL,
                             ticks=FALSE,
                             animate = FALSE, 
                             width = NULL, 
                             sep = ",", 
                             pre = NULL, 
                             post = NULL
                 )
                 
                 
                 ),
    mainPanel(h4('Select sepal and petal lengths and widths in the left panel to find out the family of the family'),
              h4('For the provided sepal and petal lengths and widths, the family is'),
              verbatimTextOutput("family"),
              
              h5("Note:The prediction is made based on Edgar Anderson's Iris Data. Which gives measurements of 50 flowers of each family of iris families.See accompanying slidify slides for further details.")
              
              )
    
    
    )
             
  
)