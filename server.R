# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
  # Histogram of the Old Faithful Geyser Data ----
  # with requested number of bins
  # This expression that generates a histogram is wrapped in a call
  # to renderPlot to indicate that:
  #
  # 1. It is "reactive" and therefore should be automatically
  #    re-executed when inputs (input$bins) change
  # 2. Its output type is a plot
  output$distPlot <- renderPlot({
    
    t=seq(0,10,0.1)
    y=sin(t)
    
    
    plot(t[1:(input$bins*10)],y[1:(input$bins*10)],type="l", xlab="time", ylab="Sine wave",
         xlim=c(0, 10), ylim=c(-1, 1))
    
    
  })
  
}