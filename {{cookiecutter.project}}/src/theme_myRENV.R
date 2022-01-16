# created theme 

theme_myRENV <- function(){
  theme_light() %+replace%
    theme(
      
      line = element_line(colour = 'grey30', size = 1),
      text = element_text(colour = "lightpink4", face = 'bold' , size = 15 ),
      
      plot.title = element_text(size = 18, family = '' , 
                                face = 'bold', hjust = 0.5, 
                                vjust = 1.5, colour = 'blue4'),
      
      axis.ticks = element_line(),
      
      
      panel.background = element_rect(fill = "white"),
      plot.margin = margin(2, 1, 1, 1, "cm"),
      plot.background = element_rect(fill = "papayawhip"),
      
      legend.key = element_blank(),
      legend.position = 'right',
      legend.key.size = unit(0.5, 'cm'), #change legend key size
      #legend.key.height = unit(1, 'cm'), #change legend key height
      #legend.key.width = unit(1, 'cm'), #change legend key width
      #legend.title = element_text(size=14), #change legend title font size
      legend.text = element_text(size=10) #change legend text font size
      
    )
}



