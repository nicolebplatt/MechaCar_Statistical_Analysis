# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
After performing a multiple linear regression analysis on the MPG dataset, we find that of the 5 variables used to predict mpg only 2 have a statistical significance at the 95% confidence interval: vehicle length and ground clearance. These two variables have p-values less than 0.05 and are statistically unlikely to provide random amounts of variance in the linear model. At the 90% confidence interval, vehicle weight provides a non-random amount of variance to the mpg values because the p-value is 0.078.

Insert lm_summary image

According to the results, our linear regression model would be as follows: 
mpg = 6.267(vehicle_length) + 1.245e-03(vehicle_weight) + 6.877e-02(spoiler_angle) + 3.546(ground_clearance) - 3.411(AWD) _1.040e02

Insert lm image

Because the p-value for our model is 5.35e-11, we can reject the null hypothesis at the 95% confidence interval and state that the slope is not considered to be zero.

To determine if this linear model effectively predicts mpg of MechaCar prototypes we look at the r-squared value. Since r-squared = 0.7, we can state that our model is moderately strong at predicting mpg. It might be beneficial to capture and evaluate more data points and variables such as hybrid engine that might be better at predicting mpg.

Insert r table


## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. When looking at the weight capacities of all 150 suspension coils across the manufacturing lots, we see that in totality the variance is below the threshold of 100 PSI at 62.29.

Insert total summary image

However, when we drill down into the three manufacturing lots to determine if the manufacturing process is consistent across them, we see that only two manufacturing lots are able to meet the design specifications that the variance of the coils must not exceed 100 PSI. Specifically, the variance for Lot1 is 0.98 and the variance for Lot2 is 7.47, both of which are well below the 100 PSI threshold. However, the variance for Lot3 is 170.29, which exceeds the 100 PSI threshold and therefore this lot is not meeting the design specifications.

Insert lot summary image

## T-Tests on Suspension Coils
Analyzing the PSI across all manufacturing lots compared to the population mean of 1,500 PSI we get a p-value of 0.06 at the 95% confidence interval. Because this is above the 0.05 threshold, we cannot reject the null hypothesis that the PSI from the sample suspension coils are statistically different from the population PSI. Therefore, we assume that the entire sample mean is not statistically different from the population mean at the 95% confidence interval.

Insert sample vs population mean image

When we filter our sample of 150 suspension coils into the the three manufacturing lots, we can determine if the PSI for each lot is statistically different from the population mean of 1,500 PSI. Below are the results and findings for each of the three lots:

### Lot 1
With a mean of 1500 PSI, the p-value for Lot 1 is 1. This means we do not have sufficient evidence to reject the null hypothesis and we therefore assume that the mean of Lot 1's suspension coils is not statistically different from the population mean at the 95% confidence interval.

Insert Lot1_PSI image

### Lot 2
With a mean of 1500.2 PSI, the p-value for Lot 2 is 0.61. This means we do not have sufficient evidence to reject the null hypothesis and we therefore assume that the population mean and Lot 2's mean are statistically similar at the 95% confidence interval.

Insert Lot2_PSI image

### Lot 3
With a mean of 1496.14 PSI, the p-value for Lot 2 is 0.04. This means we CAN reject the null hypothesis and state that there IS sufficient evidence to believe the mean PSI for Lot 3 is statistically different from the population mean at the 95% confidence interval.

Insert Lot3_PSI image

## Study Design: MechaCar vs Competition
In order to conduct a statistical study that can quantify how MechaCar performs against the competition, I would prepare a few things.

First, I would establish my success metrics. Namely, I would create two metrics to evaluate how MechaCar stacks up against its competition: production edge and future success. I would measure these metrics using a variety of data and subsequent analysis.

In order to perform my statistical analysis, I would need a dataset that contains several variables across different cars and manufacturers. These variables would include: cost, fuel efficiency as determined by mpg, safety rating, car popularity as measured by number of cars sold each year, maintenance costs if available, and I would include a metric for supply likelihood since supply chains across the world are currently facing shortages creating significant delays in production which would be disadvantageous to consumers. 

My null hypothesis would be that there is no difference between MechaCar and its competition, while my alternative hypothesis would be that MechaCar is better than its competition.

I would use ANOVA testing as my first statistical test since I want to compare the means of my variables across more than two groups (assuming there are multiple competitors, not just one). This test is related to measuring my first metric: production edge, since I want to establish how MechaCar stacks up in terms of cost, maintenance, safety, etc. I would also utilize multiple linear regression as a statistical test for my second metric: future success. This is appropriate since I want to utilize multiple independent variables to predict likelihood of future success.


