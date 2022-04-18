# Module_15_Challenge
Module 15 Challenge - MechaCar Analysis

## Overview of Project
This project involves using R Studio to analyze data on behalf of an automobile manufacturer. 

### Purpose
The purpose of this challenge is to take two CSV files - one containing data on the impact of design parameters on fuel economy, and the second containing testing data related various manufacturing lots of a particular component, and to perform an analysis in R in order to address specific questions, and to then propose an additional analysis that could be performed in R to further inform the company's decision making process. 

## Linear Regression to Predict MPG

![Linear Regression Summary](/images/summary_linear_regression.png)

- Based on our analysis, we can conclude that Vehicle Weight and whether the vechicle is equipped with AWD both provide a non-random amount of variance to the MPG values in the dataset.  This conclusion is based on the P-Value of each of the factors - AWD (-3.411000000) and Vehicle Weight (0.001245) are the only variables for which the P value is less than 0.05, which allows us to reject the Null Hypothesis and state that a relationship does exist between those variables and our MPG observations.

- The slope of the linear model is nearly, but not quite, zero - however, I believe that it is close enough to zero that it is considered to be Zero.

- No, based on my analysis, I do not believe that this particular linear model effectively predicts the MPG of MechaCar prototypes, as evidenced by the linear regression modeling when performed on each of the criteria individually

![Linear Regression Summary - MPG AWD](/images/Rplot_linear_regression_MPG_AWD.png)

![Linear Regression Summary - MPG Weight](/images/Rplot_linear_regression_MPG_Weight.png)

![Linear Regression Summary - MPG Clearance](/images/Rplot_linear_regression_MPG_Clearance.png)

![Linear Regression Summary - MPG Length](/images/Rplot_linear_regression_MPG_Length.png)

![Linear Regression Summary - MPG Spoiler](/images/Rplot_linear_regression_MPG_Spoiler.png)

## Summary Statistics on Suspension Coils

- Based on our analysis, the Total Summary and Lot Summary data are as follows:

![Total Summary](/images/total_summary.png)

![Lot Summary](/images/lot_summary.png)

- Given that the design specifications dictate that the variance of the suspension coils must not exceed 100 per square inch, the data demonstrates that, across all manufacturing lots, the variance is less than 100 PSI; however, within Lot3, there is a variance of more than 170 PSI, which is outside of acceptable limits.  

## T-Tests on Suspension Coils

- After performing T-Tests across all Suspension Coils and within each specific Manufacturing Lot, we can conclude that the PSI across all manufacturing lots as a whole, as well as within Lot1 and Lot2 individually, are not statistically different from the population mean of 1500 PSI, as they each have a P value however greater than 0.05.  However, Lot3 is statistically different from the population mean of 1500 PSI, as its P value is 0.04.

![T Test](/images/t_test.png)

![T Test Lot 1](/images/t_test_lot1.png)

![T Test Lot 2](/images/t_test_lot2.png)

![T Test Lot 3](/images/t_test_lot3.png)

## Study Design: MechaCar vs Competition

- While there are a number of statistical studies that could be performed in order to quantify how the MechaCar performs against the competition, I would be particularly interested in analyzing how long the average AutosRUs vehicle remains on the road when compared to it's competition, using data derived from vehicle registration databases.

- The metric would be the number of months elapsed between the vehicle's model year and/or production date (depending on the data that is avaiable) and the date that the registration database is obtained, aggregated by manufacturer, and perhaps further grouped by vehicle class or model, with the output showing the number of vehicles that are still actively registered after X years, and the average 'life span' for each.

- The Null Hypothesis would be that there is no difference across manufacturers, vehicle classes, and/or models.

- The most useful statistical tests would be a Linear Regression test to derive summary statistics for each manufacturer and across all vehicles in the data set, and to then conduct a T Test of data for each manufacturer individually, using the metrics derived from analyzing all vehicles in the data set.

- The data needed would be a table containing vehicle manufacturer, model name, class, model year, and the date of the registration database. 
