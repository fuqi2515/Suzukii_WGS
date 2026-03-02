#Author:QiFu
#This script is based on code from https://github.com/Sfeng666/Dsuz_popgen_GEA, modified by QiFu to suit the current analysis pipeline.
#please cite below paper if you use this code.
Feng S., DeGrey S. P., Guédot C., Schoville S. D., Pool J. E. Genomic Diversity Illuminates the Environmental Adaptation of Drosophila suzukii. Genome Biology and Evolution 16, evae195 (2024).

## set your working directory and load the required packages
library(raster)
library(rgdal)
library(corrplot)
library(dplyr)
library(R.utils)
library(sp)

setwd("D:/GEA/")
path_data <- "D:/GEA" #pay attention, do not add slash in the end!

## let's make functions to download and process monthly environmental variable into annual variable
## functions
## download and process monthly environmental variable into annual variable
annual.env.pop <- function(url){
  dir.zip <- paste(path_data, basename(url), sep = '/')
  dir.unzip <- gsub(sprintf("[.]%s$", 'zip'), "", dir.zip, ignore.case = TRUE)
  #download.file(url, dir.zip) #sometimes breakdown happens when download 0.5 resolution date, so download worldclim data directly from websites to your laptop
  unzip(dir.zip, exdir = dir.unzip)
  tifDat <- list.files(dir.unzip, "tif$")
  mt.mon <- matrix(, nrow = dim(geo_loc)[1], ncol = 0)#
  for (tif in tifDat){
    dt.mon <- raster::stack(paste(dir.unzip, tif, sep = '/'))
    pop.mon <-  raster::extract(dt.mon, geo_loc[,c('Longitude','Latitude')])
    mt.mon <- cbind(mt.mon, pop.mon)
  }
  ##store month data
  mt.mon.pop <- cbind(geo_loc[,1:3],mt.mon)
  ##extract key environmental variable 
  num <- lengths(strsplit(dir.unzip,"_"))
  env_name <- strsplit(dir.unzip,"_")[[c(1,num)]]
  env_file <- paste(env_name,"month_data.csv",sep = "_")
  write.csv(mt.mon.pop,env_file)
  #get mean environmental values
  vc.annual <- apply(mt.mon, 1, mean)
  return(vc.annual)
}


## 1. extract environmental data for sampled locations
## Load population names and coordinates, note that the collumns name must contain 'Longitude' and 'Latitude'
geo_loc <- read.csv("D:/GEA/suzukii_mean_coordinates_perPOP.csv")
View(geo_loc)

## 1.1 download environmental data & extract environmental variables from wordclim

## use ?getData to learn about how to set parameter correctly. 
## If name='worldclim' you must also provide arguments var, and a resolution res. 
## Valid variables names are 'tmin', 'tmax', 'prec' and 'bio'. 
## Valid resolutions are 0.5, 2.5, 5, and 10 (minutes of a degree). 
## In the case of res=0.5, you must also provide a lon and lat argument for a tile; 
## for the lower resolutions global data will be downloaded. 
## In all cases there are 12 (monthly) files for each variable except for 'bio' which contains 19 files.
## if you use high resolution (res=0.5), I suggest download woldclim data to your own laptop device and then load into R
## however, if you want use lower resolution,the below code can be used to download worldclim data
## clim.dt <- raster::getData('worldclim',var='bio',res=5,path = path_data) #change res = 2.5 or 10 

## Load worldclim data (res=0.5) to R 
## makes list of file paths for each layer
clim.list <- dir("D:/climdata/wc2.1_30s_bio/",full.names = T, pattern = ".tif")

## stacks the layers into a single object
clim.layer <- stack(clim.list)

## Define the spatial projection system that the points are in (usually WGS84)
crs(clim.layer) <-"+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"

## Extract the climate data for each point (projection of climate layer and coordinates must match)
clim.pop <- raster::extract(clim.layer,geo_loc[,c("Longitude","Latitude")])
View(clim.pop)

## rename collumn of clim.pop
clim.pop <- rename(as.data.frame(clim.pop),
                     "bio1"="wc2.1_30s_bio_1",
                     "bio2"="wc2.1_30s_bio_2",
                     "bio3"="wc2.1_30s_bio_3",
                     "bio4"="wc2.1_30s_bio_4",
                     "bio5"="wc2.1_30s_bio_5",
                     "bio6"="wc2.1_30s_bio_6",
                     "bio7"="wc2.1_30s_bio_7",
                     "bio8"="wc2.1_30s_bio_8",
                     "bio9"="wc2.1_30s_bio_9",
                     "bio10"="wc2.1_30s_bio_10",
                     "bio11"="wc2.1_30s_bio_11",
                     "bio12"="wc2.1_30s_bio_12",
                     "bio13"="wc2.1_30s_bio_13",
                     "bio14"="wc2.1_30s_bio_14",
                     "bio15"="wc2.1_30s_bio_15",
                     "bio16"="wc2.1_30s_bio_16",
                     "bio17"="wc2.1_30s_bio_17",
                     "bio18"="wc2.1_30s_bio_18",
                     "bio19"="wc2.1_30s_bio_19")
## order bio names
clim.pop <- subset(clim.pop,select=c("bio1","bio2","bio3","bio4",
                                       "bio5","bio6","bio7","bio8",
                                       "bio9","bio10","bio11","bio12",
                                       "bio13","bio14","bio15","bio16",
                                       "bio17","bio18","bio19"))

## altitude 
## similarly, if you want to use lower resolution global data, the below code can be used to download worldclim data
## alt.dt <- raster::getData('worldclim', var = 'alt', res = 5)
## alt.pop <- raster::extract(alt.dt,geo_loc[,c(2,3)])
## alt.pop <- data.frame('Altitude'=alt.pop)
## View(alt.pop)
## however, the higher resolution date is suggested to download to your device 

elev <- raster("D:/climdata/wc2.1_30s_elev.tif")
elev.pop <- raster::extract(elev,geo_loc[,c("Longitude","Latitude")])
elev.pop <- data.frame('Altitude'=elev.pop)
View(elev.pop)

## annual mean wind speed (m s-1)
url = "https://biogeo.ucdavis.edu/data/worldclim/v2.1/base/wc2.1_30s_wind.zip"
wind.pop <- data.frame('Annual_Mean_Wind_Speed'=annual.env.pop(url), check.names = F)
View(wind.pop)
### annual mean solar radiation (kJ m-2 day-1)
url = "https://biogeo.ucdavis.edu/data/worldclim/v2.1/base/wc2.1_30s_srad.zip"
srad.pop <- data.frame('Annual_Mean_Solar_Radiation'=annual.env.pop(url), check.names = F)
View(srad.pop)
### annual mean water vapor pressure (kPa)
url = "https://biogeo.ucdavis.edu/data/worldclim/v2.1/base/wc2.1_30s_vapr.zip"
vapr.pop <- data.frame('Annual_Mean_Water_Vapor_Pressure'=annual.env.pop(url), check.names = F)
View(vapr.pop)

## 1.2 extract global land cover variables from ESRI
## because ESRI data is very big (about 60GB),it's better to download target location or country manually 
## the below code can be used to draw a map of location you're interested
## for example, the Zhejing location corresponding to 51R_20220101-20230101.tif
land_use <- raster("lulc2022/51R_20220101-20230101.tif")
plot(land_use) #check map 
#################################################
path.esri <- paste(path_data, '/', 'lulc2022/', sep = '')

suf.esri <- '_20220101-20230101.tif'

land.pop <- data.frame('Ratio_Crop_to_Forest'=c(),
                       'Ratio_Built_to_Vegetation'=c(), 
                       check.names = F)
geo_loc

for (i in row.names(geo_loc)){
  utm <- geo_loc[i,]$UTM
  land.dt <- raster::raster(paste(path.esri, utm, suf.esri, sep = ''))
  
  ### project sample coordinate
  points.crs <- SpatialPoints(geo_loc[i, c('Longitude','Latitude')], 
                              proj4string=CRS("+proj=longlat +datum=WGS84"))
  
  ### reproject sample coordinate to the coordinate reference system (CRS) of target raster object
  points.reproj <- sp::spTransform(points.crs, CRSobj = crs(land.dt))
  
  ### extract cells within a given range
  land.range <- raster::extract(land.dt, points.reproj, buffer=2/pi*5000*sqrt(2), small=TRUE)[[1]]
  
  ### calculate land use composition - crop/forest & built/(crop + forest)
  crop <- length(land.range[land.range == 5])
  tree <- length(land.range[land.range == 2])
  built <- length(land.range[land.range == 7])
  crop.vs.forest <- crop/tree
  built.vs.veg <- built/(crop + tree)
  crop.vs.forest[!is.finite(crop.vs.forest)] <- 0 # set to 0 if denominator is 0
  built.vs.veg[!is.finite(built.vs.veg)] <- 0
  
  ### add the composition to the sample dataframe
  land.pop <- rbind(land.pop, data.frame('Ratio_Crop_to_Forest'=crop.vs.forest,
                                         'Ratio_Built_to_Vegetation'=built.vs.veg, 
                                         check.names = F))
  
}
land.pop

##################################################################################
## 2. combine variables into a full data set
env.pop <- cbind(geo_loc, elev.pop, clim.pop, wind.pop, srad.pop,vapr.pop, land.pop)
View(env.pop)

path_data <- "D:/GEA"
write.table(env.pop, file = paste(path_data, '/', 'suzukii_coord_environmental_variables.txt', sep = ''), 
            row.names = F, quote = F)
write.csv(env.pop,file = paste(path_data, '/', 'suzukii_coord_environmental_variables.csv', sep = ''),
          row.names = F)

