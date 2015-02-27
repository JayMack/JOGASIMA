##----------------------------
##   Label the data
##----------------------------

##description: this code is going to prepare the data for further analysis

##----------------------------


##read data into R
data<-read.table("Data/covtype.data",sep=",")
quantiNames<-c("Elevation","Aspect","Slope","HorDistHydro","VerDisHydro","HorDistRoad","Hill9","Hill12","Hill3","HorDisFire")
BinaWildNames<-c("Wil1d","Wild2","Wild3","Wild4")
Soils<-rep("Soil",40)
Number<-seq(1,40,1)
InteSoilNames<-paste(Soils,Number)
CoverType<-c("CoverType")

colnames(data)<-c(quantiNames,BinaWildNames,InteSoilNames,CoverType)

write.csv(data,"LabelData.csv")
