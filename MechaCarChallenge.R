
# Import dplry library
library(dplyr)

# Import tidyverse library
library(tidyverse)

# Import MechaCar_mpg.csv as Data Fram
MechaCar_MPG_DF <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform multiple linear regression using lm() function
test <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_MPG_DF)
str(test)

# Obtain statistical metrics using summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_MPG_DF))

# Linear Regression and Plot - MPG vs Vehicle Length
lm(mpg ~ vehicle_length,MechaCar_MPG_DF) #create linear model
summary(lm(mpg ~ vehicle_length,MechaCar_MPG_DF)) #summarize linear model

model_MPG_length <- lm(mpg ~ vehicle_length,MechaCar_MPG_DF) #create linear model
yvals <- model_MPG_length$coefficients['vehicle_length']*MechaCar_MPG_DF$vehicle_length +
model_MPG_length$coefficients['(Intercept)'] #determine y-axis values from linear model

plt <- ggplot(MechaCar_MPG_DF,aes(x=vehicle_length,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# Linear Regression and Plot - MPG vs Vehicle Weight
lm(mpg ~ vehicle_weight,MechaCar_MPG_DF) #create linear model
summary(lm(mpg ~ vehicle_weight,MechaCar_MPG_DF)) #summarize linear model

model_MPG_weight <- lm(mpg ~ vehicle_weight,MechaCar_MPG_DF) #create linear model
yvals <- model_MPG_weight$coefficients['vehicle_weight']*MechaCar_MPG_DF$vehicle_weight +
model_MPG_weight$coefficients['(Intercept)'] #determine y-axis values from linear model

plt <- ggplot(MechaCar_MPG_DF,aes(x=vehicle_weight,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# Linear Regression and Plot - MPG vs Spoiler Angle
lm(mpg ~ spoiler_angle,MechaCar_MPG_DF) #create linear model
summary(lm(mpg ~ spoiler_angle,MechaCar_MPG_DF)) #summarize linear model

model_MPG_spoiler <- lm(mpg ~ spoiler_angle,MechaCar_MPG_DF) #create linear model
yvals <- model_MPG_spoiler$coefficients['spoiler_angle']*MechaCar_MPG_DF$spoiler_angle +
model_MPG_spoiler$coefficients['(Intercept)'] #determine y-axis values from linear model

plt <- ggplot(MechaCar_MPG_DF,aes(x=spoiler_angle,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# Linear Regression and Plot - MPG vs Ground Clearance
lm(mpg ~ ground_clearance,MechaCar_MPG_DF) #create linear model
summary(lm(mpg ~ ground_clearance,MechaCar_MPG_DF)) #summarize linear model

model_MPG_clearance <- lm(mpg ~ ground_clearance,MechaCar_MPG_DF) #create linear model
yvals <- model_MPG_clearance$coefficients['ground_clearance']*MechaCar_MPG_DF$ground_clearance +
model_MPG_clearance$coefficients['(Intercept)'] #determine y-axis values from linear model

plt <- ggplot(MechaCar_MPG_DF,aes(x=ground_clearance,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# Linear Regression and Plot - MPG vs AWD
lm(mpg ~ AWD,MechaCar_MPG_DF) #create linear model
summary(lm(mpg ~ AWD,MechaCar_MPG_DF)) #summarize linear model

model_MPG_AWD <- lm(mpg ~ AWD,MechaCar_MPG_DF) #create linear model
yvals <- model_MPG_AWD$coefficients['AWD']*MechaCar_MPG_DF$AWD +
model_MPG_AWD$coefficients['(Intercept)'] #determine y-axis values from linear model

plt <- ggplot(MechaCar_MPG_DF,aes(x=AWD,y=mpg)) #import dataset into ggplot2
plt + geom_point() + scale_x_discrete(limits=c(0,1)) + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# Import Suspension_Coil.csv as Data Frame
Suspension_Coil_DF <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

summary(Suspension_Coil_DF)
total_summary <- Suspension_Coil_DF %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table
lot_summary <- Suspension_Coil_DF %>% group_by(Manufacturing_Lot) %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table
?t.test()

# One Sample T-Test

result <- t.test(Suspension_Coil_DF[['PSI']], mu=1500)
result

lot1_data <- subset(Suspension_Coil_DF, Manufacturing_Lot == "Lot1")
lot2_data <- subset(Suspension_Coil_DF, Manufacturing_Lot == "Lot2")
lot3_data <- subset(Suspension_Coil_DF, Manufacturing_Lot == "Lot3")

lot1_results <- t.test(lot1_data[['PSI']], mu=1500)
lot1_results

lot2_results <- t.test(lot2_data[['PSI']], mu=1500)
lot2_results

lot3_results <- t.test(lot3_data[['PSI']], mu=1500)
lot3_results