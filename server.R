library(shiny)
library(caret)

familyPrediction<-function(sepLen, sepWid, petLen, petWid)
{
  tempTrain <- createDataPartition(y=iris$Species, p=0.7, list=FALSE)
  
  forTraining <- iris[tempTrain,] 
  forTesting <- iris[-tempTrain,]
  
  require(randomForest)
  set.seed(12345)
  
  rfTraining=randomForest(Species~.,data=forTraining,ntree=100, importance=TRUE)
  m <- matrix(0, ncol = 5, nrow = 1)
  newDF <- data.frame(m)
  names(newDF)<-names(iris)
  newDF[1,]<-c(sepLen, sepWid, petLen, petWid,0)
  family<-predict(rfTraining, newDF,type="class") 
  attributes(family)$levels[as.numeric(family)]
  
}

shinyServer(function(input, output, session) {
  
  
output$family<-renderPrint(familyPrediction(input$sepLen, input$sepWid, input$petLen, input$petWid)  )

})