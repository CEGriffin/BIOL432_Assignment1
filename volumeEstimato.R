#confirm working directory
getwd()

#load libraries
library(dplyr)

#read measurements.csv
limb_data<-read.csv("measurements.csv", header=T)

#Add limb volume to data set (the limb is assumed to be a perfect cylinder)
#Round data to propagate significant digits of measurements
limb_data<-limb_data%>%
  mutate(limb_volume_cm3=round(pi*limb_length_cm*0.5*limb_width_cm^2, 2))

#export to a csv file and overwrite previous measurements.csv file
write.csv(limb_data, file="./measurements.csv", row.names=F)
