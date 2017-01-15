# GOAL 1 : Get a clean spatial dataset for Districts of India

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
indiadistshppath <- file.path("~/Documents/SpatialData/IND_adm_shp/IND_adm2.shp")
# read a shapefile
indiastateshp <- shapefile(indiadistshppath)
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
indspatialpolygdataframepath <- file.path("~/Documents/SpatialData/IND_adm2_RData.rds")
# read spatialpolygondataframe
indiadistrds <-  readRDS(file = indspatialpolygdataframepath)
# View States of India 
plot(indiadistrds,main="India",col='yellow')

# Note: Now the Following steps are same for shapefile(indiastateshp) and rds file once 

################################## 3. Clean Data  #############################################
# Get rid of unnecessary columns if any
View(indiadistrds)
# Review columns
indiadistrds$CCA_2 <- NULL
indiadistrds$CCN_2<- NULL
indiadistrds$VARNAME_2 <- NULL
indiadistrds$NL_NAME_2<- NULL

# Get rid of duplicate columns if any
# Columns TYPE_2 and ENGTYPE_2 are identical. So set one column to NULL
indiadistrds$ENGTYPE_2<-NULL

# Get rid of duplicate rows if any

# Check for typos

# Check administrative division entries accuracy

# Re-verify Results

# Save this clean SpatialPolygonsDataframe to disk
saveRDS(newindiastaterds,"~/Documents/CleanSpatialData/IND_adm2_RData.rds")

# We now have a clean dataset of Districts of India by States


############################## TO BE CONTINUED.. ###############################################


