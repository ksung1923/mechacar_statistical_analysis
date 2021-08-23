## I. SET UP -------------------------------------------------------------------

# Clear Environment
rm(list = ls())

# Set Directory
setwd("C:/Users/ksung/Desktop/BootCamp/Class_Module/Module15_Statistics_R_Analysis/mechacar_statistical_analysis")
#setwd("T:/Krystal Sung/mechacar_statistical_analysis")

# Load packages
library(jsonlite)
library(tidyverse)
library(dplyr)


# II. LOAD DATA ----------------------------------------------------------------

mecha_car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

sus_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)


# III. DELIVERABLE 1: LINGER REGRESSION  ---------------------------------------

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)) #generate summary statistics


# IV. DELIVERABLE 2: SUMMARY STATISTICS ON SUSPENSION COILS  -------------------

total_summary <- sus_coil %>% summarize(Mean = mean(PSI)
                                        ,Median = median(PSI)
                                        ,Variance = var(PSI)
                                        ,SD = sd(PSI))

lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI)
            ,Median = median(PSI)
            ,Variance = var(PSI)
            ,SD = sd(PSI))


# V. DELIVERABLE 3: T-TESTS ON SUSPENSION COILS  -------------------------------

#1) compare all lots versus population means
t.test(sus_coil$PSI, mu=1500) 

#2) compare Lot1 versus population means
t.test(subset(sus_coil, Manufacturing_Lot == "Lot1", PSI), mu=1500) 

#3) compare Lot2 versus population means
t.test(subset(sus_coil, Manufacturing_Lot == "Lot2", PSI), mu=1500) 

#4) compare Lot3 versus population means
t.test(subset(sus_coil, Manufacturing_Lot == "Lot3", PSI), mu=1500) 


    