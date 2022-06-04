# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
After performing a multiple linear regression analysis on the MPG dataset, only two out of the five variables used to predict mpg have a statistical significance at the 95% confidence interval: vehicle length and ground clearance. These two variables have p-values less than 0.05 and are statistically unlikely to provide random amounts of variance in the linear model. At the 90% confidence interval, vehicle weight provides a non-random amount of variance to the mpg values because the p-value is 0.078.

![lm_summary](https://user-images.githubusercontent.com/99286327/172020282-481cde4c-99b4-4179-b5e3-4987457759a3.png)

According to the results, our linear regression model would be as follows: 
mpg = 6.267(vehicle_length) + 1.245e-03(vehicle_weight) + 6.877e-02(spoiler_angle) + 3.546(ground_clearance) - 3.411(AWD) - 1.040e02

![lm](https://user-images.githubusercontent.com/99286327/172020281-0fa355ef-6b64-4d95-96d5-2907a08d98f0.png)

Because the p-value for our model is 5.35e-11, we can reject the null hypothesis at the 95% confidence interval and state that the slope is not considered to be zero (yellow highlight above).

To determine if this linear model effectively predicts mpg of MechaCar prototypes we look at the r-squared value (yellow highlight above). Since r-squared = 0.7, we can state that our model is moderately strong at predicting mpg. To make our model stronger, it might be beneficial to capture and evaluate more data points and variables (such as hybrid engine) that might be better at predicting mpg.

![r-table](https://user-images.githubusercontent.com/99286327/172020287-ac74d1ed-0af3-4a5f-a99f-cf735edceecc.png)


## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. When looking at the weight capacities of all 150 suspension coils across the manufacturing lots, we see that in totality the variance is below the threshold of 100 PSI at 62.29.

![total_summary](https://user-images.githubusercontent.com/99286327/172020289-45081b46-cfe7-45bb-b5d6-798381964b05.png)

However, when we drill down into the three manufacturing lots to determine if the manufacturing process is consistent across them, we see that only two manufacturing lots are able to meet the design specifications that the variance of the coils must not exceed 100 PSI. Specifically, the variance for Lot1 is 0.98 and the variance for Lot2 is 7.47, both of which are well below the 100 PSI threshold. However, the variance for Lot3 is 170.29, which exceeds the 100 PSI threshold and therefore this lot is not meeting the design specifications.

![lot_summary](https://user-images.githubusercontent.com/99286327/172020283-c1d2b4fe-ac49-4a39-8836-74d9ddb9a578.png)

## T-Tests on Suspension Coils
Analyzing the PSI across all manufacturing lots compared to the population mean of 1,500 PSI we get a p-value of 0.06 at the 95% confidence interval. Because this is above the 0.05 threshold, we cannot reject the null hypothesis that the PSI from the sample suspension coils are statistically similar from the population PSI. Therefore, we assume that the entire sample mean is not statistically different from the population mean at the 95% confidence interval.

![samplevspopulation_mean](https://user-images.githubusercontent.com/99286327/172020288-9d3e1246-0206-4331-9790-0a8f2254527c.png)

When we filter our sample of 150 suspension coils into the the three manufacturing lots, we can determine if the PSI for each lot is statistically different from the population mean of 1,500 PSI. Below are the results and findings for each of the three lots:

### Lot 1
With a mean of 1500 PSI, the p-value for Lot 1 is 1. This means we do not have sufficient evidence to reject the null hypothesis and we therefore assume that the mean of Lot 1's suspension coils is not statistically different from the population mean at the 95% confidence interval.


![Lot1_PSI](https://user-images.githubusercontent.com/99286327/172020284-3b88d87e-51a5-472e-8687-d31a175912b8.png)

### Lot 2
With a mean of 1500.2 PSI, the p-value for Lot 2 is 0.61. This means we do not have sufficient evidence to reject the null hypothesis and we therefore assume that the population mean and Lot 2's mean are statistically similar at the 95% confidence interval.

![Lot2_PSI](https://user-images.githubusercontent.com/99286327/172020285-01ae99e5-11a2-480b-9bfd-dabc89d46fcb.png)

### Lot 3
With a mean of 1496.14 PSI, the p-value for Lot 2 is 0.04. This means we CAN reject the null hypothesis and state that there IS sufficient evidence to believe the mean PSI for Lot 3 is statistically different from the population mean at the 95% confidence interval.

![Lot3_PSI](https://user-images.githubusercontent.com/99286327/172020286-140e4b1d-0f2f-4b99-b877-8285ceab5242.png)

## Study Design: MechaCar vs Competition
In order to conduct a statistical study that can quantify how MechaCar performs against the competition, I would prepare a few things.

First, I would establish my success metrics. Namely, I would create two metrics to evaluate how MechaCar stacks up against its competition: production edge and future success. I would measure these metrics using a variety of data and subsequent analysis.

In order to perform my statistical analysis, I would need a dataset that contains several variables across different cars and manufacturers. These variables would include: cost, fuel efficiency as determined by mpg, safety rating, car popularity as measured by number of cars sold each year, maintenance costs if available, and I would include a metric for supply likelihood since supply chains across the world are currently facing shortages creating significant delays in production which would be disadvantageous to consumers. 

My null hypothesis would be that there is no difference between MechaCar and its competition, while my alternative hypothesis would be that MechaCar is better than its competition.

I would use ANOVA testing as my first statistical test since I want to compare the means of my variables across more than two groups (assuming there are multiple competitors, not just one). This test is related to measuring my first metric: production edge, since I want to establish how MechaCar stacks up in terms of cost, maintenance, safety, etc. I would also utilize multiple linear regression as a statistical test for my second metric: future success. This is appropriate since I want to utilize multiple independent variables to predict likelihood of future success.



