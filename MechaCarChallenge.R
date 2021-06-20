#load the dplyr library
library(dplyr)

#read in the mecha car table
mechacar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import dataset

#Linear Regression
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechacar_table)

#create a summary to identify the p value and r-squared value
mechacar_summary <- summary(reg)

#load the suspension csv
suspension<- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import dataset

#create a total summary
total_summary <- suspension %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Num_Vehicles=n(),SD =sd(PSI), .groups = 'keep') #create summary table with multiple columns

#create a lot summary
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance=var(PSI),SD =sd(PSI), .groups = 'keep') #summary table for manufacturing lot

#perform t-test on suspension data
t.test(suspension$PSI, mu=1500)

#t test across all lots 
t.test(subset(suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
