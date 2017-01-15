Both_28_AndhraPradesh <- read_csv("~/Documents/PLSS/Research/Villagedirectory/Both-28-AndhraPradesh.CSV")
Both_28_AndhraPradesh[1,1]
replace(Both_28_AndhraPradesh,0,'')
replace(Both_28_AndhraPradesh[1,1],0,'')
Both_28_AndhraPradesh[1,1]
help replace
help(replace)
example(replace)
regexpr("'\b",Both_28_AndhraPradesh[1,1])
sub("'\b","",Both_28_AndhraPradesh[1,1])
sub("/'\b/g","",Both_28_AndhraPradesh[1,1])
str <- Both_28_AndhraPradesh[1,1]
sub("/'\b/g","1",str)
startsWith(str,"'")
sub("/'\b28/g","1",str)
sub("/'\b/i","1",str)
sub("'\b","1",str)
str<-Both_28_AndhraPradesh[1,3]
str
sub("/'\b/i","1",str)
sub("\\b","1",str,TRUE,TRUE)
sub("'\\b","1",str,TRUE,TRUE)
str
sub("'\\b","1",str,TRUE,FALSE)
sub("'\\b","1",str)
sub("'\\b","",str)
str <- Both_28_AndhraPradesh[1,1]
sub("'\\b","",str)
sub("'\\b","",Both_28_AndhraPradesh$STCode)
Both_28_AndhraPradesh$STCode <- sub("'\\b","",Both_28_AndhraPradesh$STCode)
View(Both_28_AndhraPradesh)
Both_28_AndhraPradesh$DTCode <- sub("'\\b","",Both_28_AndhraPradesh$DTCode)
Both_28_AndhraPradesh$DTName <- sub("'\\b","",Both_28_AndhraPradesh$DTName)
Both_28_AndhraPradesh$SDTCode <- sub("'\\b","",Both_28_AndhraPradesh$SDTCode)
Both_28_AndhraPradesh$SDTName <- sub("'\\b","",Both_28_AndhraPradesh$SDTName)
Both_28_AndhraPradesh$TVCode <- sub("'\\b","",Both_28_AndhraPradesh$TVCode)
Both_28_AndhraPradesh$Name <- sub("'\\b","",Both_28_AndhraPradesh$Name)
View(Both_28_AndhraPradesh)
View(Both_28_AndhraPradesh$STCode)
Both_28_AndhraPradesh$SDTCode[Both_28_AndhraPradesh$SDTCode="00000"]
Both_28_AndhraPradesh$SDTCode[Both_28_AndhraPradesh$SDTCode=="00000"]
Both_28_AndhraPradesh[Both_28_AndhraPradesh$SDTCode=="00000"]
Both_28_AndhraPradesh$Name[Both_28_AndhraPradesh$SDTCode=="00000"]
Both_28_AndhraPradesh<-Both_28_AndhraPradesh[-1,]
View(Both_28_AndhraPradesh)
Both_28_AndhraPradesh$Name[Both_28_AndhraPradesh$SDTCode=="00000"]
Both_28_AndhraPradesh$Name[Both_28_AndhraPradesh$SDTCode=="00000"]
subset(Both_28_AndhraPradesh,TVCode=="00000")
subset(Both_28_AndhraPradesh,TVCode=="000000")
subset(Both_28_AndhraPradesh,SDTCode=="000000")
subset(Both_28_AndhraPradesh,SDTCode=="00000")
subset(Both_28_AndhraPradesh,SDTCode<>"00000")
subset(Both_28_AndhraPradesh,SDTCode!="00000")
Both_28_AndhraPradesh <- subset(Both_28_AndhraPradesh,SDTCode!="00000")
View(Both_28_AndhraPradesh)
write.table(df2,"./Documents/PLSS/Research/VillageDirectoryCleaned/Census2011AndhraPradeshAllVillages.csv",sep = ",",row.names = FALSE,col.names = TRUE)
Both_28_AndhraPradesh$SNo <- rownames(Both_28_AndhraPradesh)
View(Both_28_AndhraPradesh)
Both_28_AndhraPradesh$SNo <- as.numeric(Both_28_AndhraPradesh)
Both_28_AndhraPradesh$SNo <- as.numeric(Both_28_AndhraPradesh$SNo)
View(Both_28_AndhraPradesh)
colnames
colnames(Both_28_AndhraPradesh)
colnames(df2)
colnames(df2) <- c(df2$NameFirmModel,df2$SNo,df2$UnitCost,df2$Subsidy,df2$NonSusbidy,df2$PercentSubsidy)
`colnames<-`(df2,c("NameFirmModel","SNo","UnitCost","Subsidy","NonSusbidy","PercentSubsidy" ))
colnames(df2)
View(df2)
names(Both_28_AndhraPradesh)
Both_28_AndhraPradesh[,c("SNo",setdiff(names(Both_28_AndhraPradesh),"SNo")]
Both_28_AndhraPradesh[,c("SNo",setdiff(names(Both_28_AndhraPradesh),"SNo"))]
Both_28_AndhraPradesh <- Both_28_AndhraPradesh[,c("SNo",setdiff(names(Both_28_AndhraPradesh),"SNo"))]
View(Both_28_AndhraPradesh)
write.table(Both_28_AndhraPradesh,"./Documents/PLSS/Research/VillageDirectoryCleaned/Census2011AndhraPradeshAllVillages.csv",sep = ",",row.names = FALSE,col.names = TRUE)
