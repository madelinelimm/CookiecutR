
ggplot(data = cars, aes(speed, dist))+
  geom_point()+
  theme_myRENV()

  

theme_myRENV <- function(){
  ggplot2::theme_minimal() %+replace%
  ggplot2::theme(
    line = ggplot2::element_line(colour = 'lightblue4', size = 0.75, linetype = 1),
    text = ggplot2::element_text(colour = "#656565" , size = 13 ),
    axis.line = ggplot2::element_line(colour = 'midnightblue'),
    
    # Modified inheritance structure of rect element
    plot.background = ggplot2::element_rect(),
    panel.background = ggplot2::element_rect(),
    legend.key = ggplot2::element_rect(colour = '#DADADA'),
    
    # Modifiying legend.position
    legend.position = 'none'
    
  )
}
