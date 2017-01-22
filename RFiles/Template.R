library('shiny')
uir<-fluidPage(
"my new sentence",
"my new string",
tags$h6("my page"),
h1("jjkjkjhk"),
sliderInput(inputId = "one",min = 10,max = 100,label = "SliderInput",value = 50),
actionButton(inputId = "btn1",label = "Clck me"),
textInput(inputId = "enter",label = "Enter Title"),
plotOutput(outputId = "hist"),
plotOutput(outputId = "hist2"),
HTML()

)

server<- function(input,output){
  datatitle<-eventReactive(input$btn1,{input$enter})
  output$hist<-renderPlot({hist(rnorm(input$one),main = datatitle())})
  output$hist2<-renderPlot({hist(input$one)})
}

shinyApp(ui=uir,server=server)