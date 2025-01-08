#Confirm working directory
getwd()

#Create a vector of species names
spec_names<-sample(c("northern_caracara", "crested_caracara", "chimango_caracara", "striated_caracara", "mountain_caracara"), 100, rep=T)

#Create a vector of limb widths
#round to reasonable significant digits atainable
limb_width_cm<-round(rnorm(100,3,1),2)

#Create a vector of limb lengths
#round to reasonable significant digits atainable
limb_length_cm<-round(rnorm(100, 25, 5),2)

#Create a vector of observers
observer<-sample(c("b_sanderson", "n_gaiman", "v_schwab"), 100, rep=T)

#combine vectors into data frame
limb_dataframe<-data.frame(spec_names, limb_width_cm, limb_length_cm, observer)

#export to a csv file
write.csv(limb_dataframe, file="./measurements.csv", row.names=F)
