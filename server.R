# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
  #Parameters 
  tscale =5
  period = 24
  mu = ( 1 / ( 0.2683 - 0.1716 * exp( - 0.0788 * age ) ) )
  circadian_amplitude = (- 7.5 + 2900 * exp( - 1.7 * mu))
  upper_asymptote = (mu * 4.85)
  upper_threshold 
  lower_threshold 
  mean_upper_threshold = 12.65
  mean_lower_threshold = 11.65 
  MSFshift  =2.34
  phase = ((-87.8 + 41.4 * mu - 4.7 * mu * mu + jetlag + MSFshift) * 360 / 24 )
  H_max =30
  H_min = 0
  H_shift = ( min-pycor - H_scale * H_min )
  H_scale =  ( (0.85 * max-pycor - min-pycor ) / (H_max - H_min) )
  H_level 
  circadian 
  T_start = round( -103.2 + 48.9 * mu - 5.4 * mu * mu  + MSFshift )
  sleepiness = 0
  Alertness = 0
  

  output$distPlot <- renderPlot({
    
    t=seq(0,10,0.1)
    y=sin(t)
    
    
    plot(t[1:(input$bins*10)],y[1:(input$bins*10)],type="l", xlab="time", ylab="Sine wave",
         xlim=c(0, 10), ylim=c(-1, 1))
    
    
  })
  
}