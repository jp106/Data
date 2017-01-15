# GOAL 1 : Get a clean spatial dataset for States of India

################################# 1.  GET SPATIAL DATA   ######################################
# Downlaod shapefiles from http://biogeo.ucdavis.edu/data/gadm2.8/gdb/IND_adm_shp.zip
# Downlaod R spatial files from http://biogeo.ucdavis.edu/data/gadm2.8/gdb/IND_adm0.rds
# State http://biogeo.ucdavis.edu/data/gadm2.8/gdb/IND_adm1.rds
# District http://biogeo.ucdavis.edu/data/gadm2.8/gdb/IND_adm2.rds
# Sub-District http://biogeo.ucdavis.edu/data/gadm2.8/gdb/IND_adm3.rds
url <- "http://biogeo.ucdavis.edu/data/gadm2.8/gdb/IND_adm3.rds"
downloadtopath <- "~/Documents/SpatialData/IND_adm3.rds"
# download file to local directory
download.file(url,downloadtopath)
# Note: the urls above may change. To download manually please visit - http://gadm.org/country

################################## 2.  READ SPATIAL DATA   ###################################
# Read shapefile 
# packages required sp, raster, rgdal
# path to shapefile  
indiastateshppath <- file.path("~/Documents/SpatialData/IND_adm_shp/IND_adm1.shp")
# read a shapefile
indiastateshp <- shapefile(indiastateshppath)
# view district shapefile
#plot(indiadistshp,main="Districts of India",col='yellow')
# view state shapefile
plot(indiastateshp,main="States of India",col='red')
# view country shapefile
#plot(indiashp,main="India",col='yellow')
# create dataframe from shapefile 
attributetabl <- data.frame(indiastateshp)

# Read RDS file
# Package required sp
# path to rds file
indspatialpolygdataframepath <- file.path("~/Documents/SpatialData/IND_adm1_RData.rds")
# read spatialpolygondataframe
indiastaterds <-  readRDS(file = indspatialpolygdataframepath)
# View States of India 
plot(indiastaterds,main="India",col='yellow')

# Note: Now the Following steps are same for shapefile(indiastateshp) and rds file once 

################################## 3. Clean Data  #############################################
# Get rid of unnecessary columns if any
indiastaterds$CCA_1 <- NULL
indiastaterds$CCN_1<- NULL
indiastaterds$VARNAME_1 <- NULL
indiastaterds$NL_NAME_1<- NULL

# Get rid of duplicate columns if any
# Columns TYPE_1 and ENGTYPE_1 are identical. So set one column to NULL
indiastaterds$ENGTYPE_1<-NULL

# Get rid of duplicate rows if any
# There are two rows(31,32) with NAME_1 = "Tamil Nadu"
# Rowindex 31 HASC_1 = "IN.AP" is incorrect
# Rowindex 32 with HASC_1="IN.TN" is the correct 

newindiastaterds<- indiastaterds[indiastaterds$OBJECTID!="31",]

# Check for typos
# Column TYPE_1 has typos for "Union Territory". 
# Replace "Union Territor" with "Union Territory".
newindiastaterds$TYPE_1[newindiastaterds$TYPE_1!="State"] <- "Union Territory"


# Check administrative division entries accuracy
# Officially there are 29 states and 7 union territories in India (http://www.knowindia.gov.in/knowindia/state_uts.php)
table(newindiastaterds$TYPE_1)
# State Union Territor 
# 28              8
# Upon verification state "Himachal Pradesh" is set to TYPE_1 Union Territory 
# Lets correct this 
newindiastaterds$TYPE_1[newindiastaterds$TYPE_1!="State"] <- "Union Territory"

# Re-verify Results
table(newindiastaterds$TYPE_1)
# Results
# State Union Territory 
# 29              7
# Save this clean SpatialPolygonsDataframe to disk
saveRDS(newindiastaterds,"~/Documents/CleanSpatialData/IND_adm1_RData.rds")

# We now have a clean dataset of States of India


############################## TO BE CONTINUED.. ###############################################


