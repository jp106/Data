# GOAL 1 : Get a clean spatial dataset for Sub Districts of India

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
indsdshppath <- file.path("~/Documents/SpatialData/IND_adm_shp/IND_adm3.shp")
# read a shapefile
indsdshp <- shapefile(indiastateshppath)
# view district shapefile
#plot(indiadistshp,main="Districts of India",col='yellow')
# view state shapefile
plot(indsdshp,main="States of India",col='red')
# view country shapefile
#plot(indiashp,main="India",col='yellow')
# create dataframe from shapefile 
attributetabl <- data.frame(indsdshp)

# Read RDS file
# Package required sp
# path to rds file
indspatialpolygdataframepath <- file.path("~/Documents/SpatialData/IND_adm1_RData.rds")
# read spatialpolygondataframe
indsdrds <-  readRDS(file = indspatialpolygdataframepath)
# View States of India 
plot(indsdrds,main="Sub-Districts of India",col='yellow')

# Note: Now the Following steps are same for shapefile(indiastateshp) and rds file once 

################################## 3. Clean Data  #############################################
# Get rid of unnecessary columns if any
View(indsdrds)
# Remove columns that are empty or NA values
indsdrds$CCA_3 <- NULL
indsdrds$CCN_3<- NULL
indsdrds$VARNAME_3 <- NULL
indsdrds$NL_NAME_3<- NULL

# Get rid of duplicate columns if any
# Columns TYPE_3 and ENGTYPE_3 are identical. So set one column to NULL
indsdrds$ENGTYPE_3<-NULL

# Get rid of duplicate rows if any

# Check for typos

# Check administrative division entries accuracy

# Re-verify Results

# Save this clean SpatialPolygonsDataframe to disk
saveRDS(newindiastaterds,"~/Documents/CleanSpatialData/IND_adm3_RData.rds")

# We now have a clean dataset of Sub Districts of India by States, Districts
# R studio Leaflet - R interface to leaflet maps

############################## TO BE CONTINUED.. ###############################################


