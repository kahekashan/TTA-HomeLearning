library(ggplot2)
library(tidyverse)
mpg
summary(mpg)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
#The plot shows a negative relationship between engine size (displ) and fuel efficiency (hwy).cars with big engines use more fuel. 
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color=class))   
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size=class))   
#midsize and compact cars,improves their gas mileage
# Left
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Right
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape = class))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color=class)) +  facet_wrap(~ class, nrow = 2)
#shows higher the engine size lower the effiency
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) +facet_grid(drv ~ cyl)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color=drv)) +facet_grid(drv ~ cyl)
#the smooth geom is smooth line fitted to the data.
ggplot(data = mpg) +  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))
#Here geom_smooth() separates the cars into three lines based on their drv value, which describes a car's drivetrain. One line describes all of the points with a 4 value, one line describes all of the points with an f value, and one line describes all of the points with an r value. Here, 4 stands for four-wheel drive, f for front-wheel drive, and r for rear-wheel drive.