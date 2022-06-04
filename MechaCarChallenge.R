library(tidyverse)
# Deliverable 1
MechaCarMPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCarMPG)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCarMPG))

# Deliverable 2
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=sd(PSI)^2, SD=sd(PSI))
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=sd(PSI)^2, SD=sd(PSI))

# Deliverable 3
# one sample t-tests
t.test(SuspensionCoil$PSI, mu=1500)
Lot1 <- subset(SuspensionCoil, Manufacturing_Lot=='Lot1')
Lot2 <- subset(SuspensionCoil, Manufacturing_Lot=='Lot2')
Lot3 <- subset(SuspensionCoil, Manufacturing_Lot=='Lot3')

t.test(Lot1$PSI, mu=1500)
t.test(Lot2$PSI, mu=1500)
t.test(Lot3$PSI, mu=1500)
