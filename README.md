# MechaCar Statistical Analysis


## Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. I design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv. 

Linear Model Statistical Summary: 
![LinearRegression](https://github.com/ksung1923/mechacar_statistical_analysis/blob/c9556945d397107a0527c0be414128cda2b2d62f/Resources/1_Linear_Regression.PNG)


1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The dependent variable of the linear model is "mpg". The independent variables and the coefficients are as follows: 
- Vehicle Length: 6.27
- Vehicle Weight: 0.0012
- Spoiler Angle: 0.0688
- Ground Clearance: 3.55
- Drivetrain (AWD): -3.41

The intercept of the linear model is -104.0.

Resulting Model: 
mpg = (6.27)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.55)ground_clearance + (-3.411)AWD + (-104.0)

2. Is the slope of the linear model considered to be zero? Why or why not?
The null hypothesis states that the slope is equal to zero. The slope of the linear model is not zero because there is a significant linear relationship between the independent variables and dependent variable. The p-Value for this model, p-Value: 5.35e-11, is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the slope of this linear model is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
We see an r-squared value of 0.7149, so about 72% of mpg predictions will be determined by this model. It is relatively effective in predicting mpg of MechaCar prototypes. 


## Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using your knowledge of R, you’ll create a summary statistics table to show:

- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Please see the summary statistics calculated on the suspension coil dataset: 

All Manufacturing Lots Summary Statistics: 

![TotalSummary](https://github.com/ksung1923/mechacar_statistical_analysis/blob/c9556945d397107a0527c0be414128cda2b2d62f/Resources/2_Total_Summary.PNG)


Individual Manufacturing Lot Summary Statistics: 

![LotSummary](https://github.com/ksung1923/mechacar_statistical_analysis/blob/c9556945d397107a0527c0be414128cda2b2d62f/Resources/2_Lot_Summary.PNG)


1. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
For all manufacturing lots, the current manufacturing data meets the design specification. When looking at the entire population of the manufacturing lot, the variance of the coils is 62.29 PSI, which is below the 100 PSI specification. 

Next, looking at each lot individually, Lot 1 and Lot 2 are well within the 100 PSI variance requirement. Lot 1 has a variances of 0.98 and Lot 2 has a variance of 7.47 respectively. However, Lot 3 shows a variance of 170.29. The variance exceeds the 100 PSI specifications and is impacting the variance for all manufacturing lots. 


## T-Tests on Suspension Coils
Using your knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

1. Summary of T-Test of All Manufacturing Lots
![T_Lots](https://github.com/ksung1923/mechacar_statistical_analysis/blob/c9556945d397107a0527c0be414128cda2b2d62f/Resources/3_TLots.PNG)

From the T-Test, the true mean of the sample is 1498.78 with a p-Value of 0.06. The p-value is higher than the common significance level of 0.05, so there is NOT enough evidence to support rejecting the null hypothesis. The mean of all three of these manufacturing lots is statistically similar to the presumed population mean of 1500.

2. Summary of T-Test of Manufacturing Lot 1
![T_Lot1](https://github.com/ksung1923/mechacar_statistical_analysis/blob/c9556945d397107a0527c0be414128cda2b2d62f/Resources/3_TLot1.PNG)


Lot 1 has a sample mean of 1500 with a p-Value of 1. We cannot reject the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean of 1500.

3. Summary of T-Test of Manufacturing Lot 2
![T_Lot2](https://github.com/ksung1923/mechacar_statistical_analysis/blob/c9556945d397107a0527c0be414128cda2b2d62f/Resources/3_TLot2.PNG)

Lot 2 has a sample mean of 1500.02 with a p-Value of 0.61. The null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistically similar.

4. Summary of T-Test of Manufacturing Lot 3
![T_Lot3](https://github.com/ksung1923/mechacar_statistical_analysis/blob/c9556945d397107a0527c0be414128cda2b2d62f/Resources/3_TLot3.PNG)

Similar to what we saw in the summary statistics of the suspension coils, Lot 3 is a different scenario compared to Lot 1 and 2. The sample mean is 1496.14 and the p-Value is 0.04, which is lower than the common significance level of 0.05. We can reject the null hypothesis that this sample mean and the presumed population mean are not statistically different.


## Study Design: MechaCar vs Competition
When buying a car, customers are often interested in the following metrics: cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating. A statistical study that can help quantify how the MechaCar performs against the competition could involve testing these metics against the safety rating over the last five years. This will allow us to see how MechaCar performs against the competition.  

1. What metric or metrics are you going to test?
In order to complete the study, I will need to collect data for comparable models across all major manufacturers for past five years for the following metrics:

- Safety Feature Rating: Independent Variable
- Current Price (Selling): Dependent Variable
- Drive Package : Independent Variable
- Engine (Electric, Hybrid, Gasoline / Conventional): Independent Variable
- Resale Value: Independent Variable
- Average Annual Cost of Ownership (Maintenance): Independent Variable
- MPG (Gasoline Efficiency): Independent Variable

2. What is the null hypothesis or alternative hypothesis?
Once I determined the metrics we are interested in testing, I created a null hypotesis for the study: 

- Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors.
- Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on performance of key factors.

3. What statistical test would you use to test the hypothesis? And why?
I would use a multiple linear regression test to determine if the metrics listed above have any correlation or predictability with the rating of the cars and see if MechCar is priced correctly. The linear regression model will test which variables are statistically significant and help quantify how the MechaCar performs against the competition. 

4. What data is needed to run the statistical test?
I will need data on the metrics listed below over the last five years on MechaCar and it's competition: 

- Safety Feature Rating
- Current Price (Selling)
- Drive Package 
- Engine (Electric, Hybrid, Gasoline / Conventional)
- Resale Value
- Average Annual Cost of Ownership (Maintenance)
- MPG (Gasoline Efficiency)
