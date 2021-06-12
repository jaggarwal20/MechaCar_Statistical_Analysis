library(dplyr)
mechacar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import dataset
#Linear Regression
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD,data=mechacar_table)
summary(reg)
