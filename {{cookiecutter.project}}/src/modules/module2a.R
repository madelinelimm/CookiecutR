# module 2a

cat("\n========================================================\n")
print('Entering Module 2a')
cat("\n========================================================\n")

library(ggplot2)

source('src/theme_myRENV.R')


ggplot(data = cars, aes(speed, dist))+
  geom_point() +
  ggtitle('Plot of speed vs distance') 


ggplot(mpg, aes(displ, hwy, colour = class))  + geom_point() +
  ggtitle('Plot of highway miles vs engine displacement') +
  theme_myRENV()


cat("\n--------------------------------------------------------------\n")