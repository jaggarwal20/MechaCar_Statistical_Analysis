library(dplyr)
mechacar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import dataset
#Linear Regression
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD,data=mechacar_table)
mechacar_summary <- summary(reg)
suspension<- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import dataset
total_summary <- suspension %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Num_Vehicles=n(),SD =sd(PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Num_Vehicles=n(),SD =sd(PSI), .groups = 'keep') #summary table for manufacturing lot
