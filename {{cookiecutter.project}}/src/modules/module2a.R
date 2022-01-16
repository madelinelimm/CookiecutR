# module 2a

cat("\n========================================================\n")
print('Entering Module 2a')
cat("\n========================================================\n")

library(ggplot2)

#source('src/theme_myRENV.R')

theme_myRENV <- function(){
  theme_light() %+replace%
    theme(
      
      line = element_line(colour = 'grey30', size = 1),
      text = element_text(colour = "lightpink4", face = 'bold' , size = 15 ),
      
      plot.title = element_text(size = 22, family = '' , 
                                face = 'bold', hjust = 0.5, 
                                vjust = 1.5, colour = 'blue4'),
      
      axis.ticks = element_line(),
      
      
      panel.background = element_rect(fill = "white"),
      plot.margin = margin(2, 1, 1, 1, "cm"),
      plot.background = element_rect(fill = "papayawhip"),
      
      legend.key = element_blank(),
      legend.position = 'right',
      
    )
}


ggplot(data = cars, aes(speed, dist))+
  geom_point() +
  ggtitle('Plot of speed vs distance') +
  theme_myRENV()


ggplot(mpg, aes(displ, hwy, colour = class))  + geom_point() +
  ggtitle('Plot of highway miles vs engine displacement') +
  theme_myRENV()


cat("\n--------------------------------------------------------------\n")