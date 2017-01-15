df2 <- read_excel("~/Documents/PLSS/Research/horticulture subsidy mechanisation.xls",sheet = "SAWS")
names(df2)<-c("SNo","NameFirmModel","UnitCost","Subsidy","NonSusbidy")
df2<-df2[-1,]
df2$UnitCost<-as.numeric(df2$UnitCost)
df2$Subsidy<-as.numeric(df2$Subsidy)
df2$NonSusbidy<-as.numeric(df2$NonSusbidy)
df2$PercentSubsidy<-paste(round((df2$Subsidy/df2$UnitCost)*100,1),"%",sep = "")
df2$SNo<-as.numeric(row.names(df2))
write.table(df2,"./Documents/PLSS/Research/PercentSubsidySaws.csv",sep = ",",row.names = FALSE,col.names = TRUE)

df2 <- read_excel("~/Documents/PLSS/Research/horticulture subsidy mechanisation.xls",sheet = "Mulcher")
names(df2)<-c("SNo","NameFirmModel","UnitCost","Subsidy","NonSusbidy")
df2<-df2[-1,]
df2$UnitCost<-as.numeric(df2$UnitCost)
df2$Subsidy<-as.numeric(df2$Subsidy)
df2$NonSusbidy<-as.numeric(df2$NonSusbidy)
df2$PercentSubsidy<-paste(round((df2$Subsidy/df2$UnitCost)*100,1),"%",sep = "")
df2$SNo<-as.numeric(row.names(df2))
write.table(df2,"./Documents/PLSS/Research/PercentSubsidyMulcher.csv",sep = ",",row.names = FALSE,col.names = TRUE)

df2 <- read_excel("~/Documents/PLSS/Research/horticulture subsidy mechanisation.xls",sheet = "PTO Operated Generators")
names(df2)<-c("SNo","NameFirmModel","UnitCost","Subsidy","NonSusbidy")
df2<-df2[-1,]
df2$UnitCost<-as.numeric(df2$UnitCost)
df2$Subsidy<-as.numeric(df2$Subsidy)
df2$NonSusbidy<-as.numeric(df2$NonSusbidy)
df2$PercentSubsidy<-paste(round((df2$Subsidy/df2$UnitCost)*100,1),"%",sep = "")
df2$SNo<-as.numeric(row.names(df2))
write.table(df2,"./Documents/PLSS/Research/PercentSubsidyPTOGenerators.csv",sep = ",",row.names = FALSE,col.names = TRUE)

df2 <- read_excel("~/Documents/PLSS/Research/horticulture subsidy mechanisation.xls",sheet = "Self Propelled")
names(df2)<-c("SNo","NameFirmModel","UnitCost","Subsidy","NonSusbidy")
df2<-df2[-1,]
df2$UnitCost<-as.numeric(df2$UnitCost)
df2$Subsidy<-as.numeric(df2$Subsidy)
df2$NonSusbidy<-as.numeric(df2$NonSusbidy)
df2$PercentSubsidy<-paste(round((df2$Subsidy/df2$UnitCost)*100,1),"%",sep = "")
df2$SNo<-as.numeric(row.names(df2))
write.table(df2,"./Documents/PLSS/Research/PercentSubsidySelfPropelled.csv",sep = ",",row.names = FALSE,col.names = TRUE)


df2 <- read_excel("~/Documents/PLSS/Research/horticulture subsidy mechanisation.xls",sheet = "PP EQUIP - Spray")
names(df2)<-c("SNo","NameFirmModel","UnitCost","Subsidy","NonSusbidy")
df2<-df2[-1,]
df2$UnitCost<-as.numeric(df2$UnitCost)
df2$Subsidy<-as.numeric(df2$Subsidy)
df2$NonSusbidy<-as.numeric(df2$NonSusbidy)
df2$PercentSubsidy<-paste(round((df2$Subsidy/df2$UnitCost)*100,1),"%",sep = "")
df2$SNo<-as.numeric(row.names(df2))
write.table(df2,"./Documents/PLSS/Research/PercentSubsidySprayEquipment.csv",sep = ",",row.names = FALSE,col.names = TRUE)


df2 <- read_excel("~/Documents/PLSS/Research/horticulture subsidy mechanisation.xls",sheet = "Tractor Mounted")
names(df2)<-c("SNo","NameFirmModel","UnitCost","Subsidy","NonSusbidy")
df2<-df2[-1,]
df2$UnitCost<-as.numeric(df2$UnitCost)
df2$Subsidy<-as.numeric(df2$Subsidy)
df2$NonSusbidy<-as.numeric(df2$NonSusbidy)
df2$PercentSubsidy<-paste(round((df2$Subsidy/df2$UnitCost)*100,1),"%",sep = "")
df2$SNo<-as.numeric(row.names(df2))
write.table(df2,"./Documents/PLSS/Research/PercentSubsidyTractorMountedSpray.csv",sep = ",",row.names = FALSE,col.names = TRUE)


