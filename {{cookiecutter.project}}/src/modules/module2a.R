# module 2a

cat("\n========================================================\n")
print('Entering Module 2a')
cat("\n========================================================\n")

pdf("rplot_speed_vs_dist.pdf") 
ggplot(data = cars, aes(speed, dist))+
  geom_point() +
  ggtitle('Plot of speed vs distance') 
dev.off() 

pdf("rplot_hwy_vs_displ.pdf") 
ggplot(mpg, aes(displ, hwy, colour = class))  + geom_point() +
  ggtitle('Plot of highway miles vs engine displacement') 
dev.off() 

cat("\n--------------------------------------------------------------\n")