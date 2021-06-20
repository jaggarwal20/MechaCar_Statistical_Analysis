# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

1. Vehicle Length and Ground Clearance provided a non-random variable. This can be seen from the t-value. Vehicle length has a t-value of 9.6 and ground clearance has a t-value of 6.6.

2. The slope of the line is not zero, as the estimate value ranges from 0.001 to 6.3. 

4. The r-squared value has a strong positive correlation of 71.5%, therefore this model does predict mpg of Mechacar effectively.

<img src="https://github.com/jaggarwal20/MechaCar_Statistical_Analysis/blob/main/Resources/Lin_Regression.png" width="400">

## Summary Statistics on Suspension Coils

The average suspension coil PSI is 1498.8 and median is 1500. The variance is 62.3 which is below the design specification requirement of 100 PSI.  Therefore, the current provider does meet the design specification overall, but on a lot by lot comparison the provider does not. 

<img src="https://github.com/jaggarwal20/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png" width="400">

Lot 1 has a variance of 0.979 and lot 2 has a variance of 7.47. Lot 3 has a variance of 170.29 which is greater than the design specification of 100.  Therefore, this lot is not meeting the requirements. 

<img src="https://github.com/jaggarwal20/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png" width="400">

## T-Tests on Suspension Coils

The t-test for the whole lot contains a p-value of greater than 5%. Therefore, this test is against the null hypothesis. 
<img src="https://github.com/jaggarwal20/MechaCar_Statistical_Analysis/blob/main/Resources/t-test.png" width="400">

The t-test for lot 1 is 1 and for Lot 2 is 0.61, but the p-value for lot 3 is below 5% and does not reject the null hypothesis. 

Lot 1: <img src="https://github.com/jaggarwal20/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_Lot1.png" width="400">

Lot 2: <img src="https://github.com/jaggarwal20/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_Lot2.png" width="400">

Lot 3: <img src="https://github.com/jaggarwal20/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_lot3.png" width="400">

## Study Design: MechaCar vs Competition
