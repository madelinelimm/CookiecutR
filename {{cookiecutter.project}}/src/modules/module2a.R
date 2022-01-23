# module 2a

cat("\n========================================================\n")
print('Entering Module 2a')
cat("\n========================================================\n")

png("results/rplot_speed_vs_dist.png") 
p1 <- ggplot(data = cars, aes(speed, dist))+
  geom_point() +
  ggtitle('Plot of speed vs distance') 

print(p1)
dev.off() 


png("results/rplot_hwy_vs_displ.png") 
p2 <- ggplot(mpg, aes(displ, hwy, colour = class))  + geom_point() +
  ggtitle('Plot of highway miles vs engine displacement') 

print(p2)
dev.off() 

cat("\n--------------------------------------------------------------\n")