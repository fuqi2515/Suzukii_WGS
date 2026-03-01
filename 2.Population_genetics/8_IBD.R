#Author:QiFu

setwd("D:/01_pop14/")
library(geosphere)
library(vegan)

suzukii_linear <- read.csv("Fst_1-Fst_matrix.csv")
View(suzukii_linear)
suzukii_linear <- suzukii_linear[,-1]


data_loc <- read.csv("suzukii_sample_ID_with_location.csv")
View(data_loc)

mean_lat <- tapply(data_loc$Latitude, data_loc$Pop, mean)
View(mean_lat)
mean_long <- tapply(data_loc$Longitude, data_loc$Pop, mean)
View(mean_long)
pop_mean_coords <- cbind(mean_long, mean_lat)
View(pop_mean_coords)

write.csv(pop_mean_coords, "suzukii_mean_coordinates_perPOP.csv", row.names = TRUE)

#### change to kilometers ####
# geographic distances
suzukii_dist_matrix <- distm(pop_mean_coords, fun= distVincentyEllipsoid)
View(suzukii_dist_matrix)
write.csv(suzukii_dist_matrix, "suzukii_geo_distances.csv")


############################### IBD ###################################
suzukii_mantel <- mantel(suzukii_dist_matrix, suzukii_linear, method = "pearson", permutations = 999, strata=NULL)
suzukii_mantel$statistic # The Mantel statistic
# 0.187
suzukii_mantel$signif #Empirical significance level from permutations.
# 0.108

###################### IBE #####################################
library(raster)
library(rgdal)
#Calc IBE from worldClim data

setwd("D:/00_climdata/wc2.1_30s_bio/")
tifFiles <- list.files (pattern=".tif")

stacked_tifs <- stack(tifFiles)

pts_suzukii <- read.csv("D:/01_pop14/suzukii_mean_coordinates_perPOP.csv")
View(pts_suzukii)
P_loc <- pts_suzukii[,2:3]#
Data_P <- P_loc
View(Data_P)
crs(stacked_tifs) <-"+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"

suzukii_clim <- raster::extract(stacked_tifs, Data_P)

suzukii_clim <- cbind(Data_P, suzukii_clim)
View(suzukii_clim)
write.csv(suzukii_clim, "D:/01_pop14/suzukii_WorldClim_values_perPOP.csv")

#calc environmental distance for pungens

suzukii_env_data <- read.csv("D:/01_pop14/suzukii_WorldClim_values_perPOP.csv")
View(suzukii_env_data)
suzukii_env_data <- suzukii_env_data[,4:22] #19 bioclim

suzukii_ENV_scaled <- scale(suzukii_env_data, center = TRUE, scale = TRUE)
View(suzukii_ENV_scaled)
suzukii_ENV_dist <- dist(suzukii_ENV_scaled, method = "euclidean", diag = FALSE, upper = FALSE, p = 2)


View(as.matrix(suzukii_ENV_dist))
write.csv(as.matrix(suzukii_ENV_dist),file = "D:/01_pop14/suzukii_env_distances.csv",quote = F)


library(ggplot2)
library(cowplot)

#### geo matrix
suzukii_geo_dit <- read.csv("D:/01_pop14/suzukii_geo_distances.csv",header = F)
View(suzukii_geo_dit)
#### env matrix
suzukii_env_dist <- read.csv("D:/01_pop14/suzukii_env_distances.csv",header = F)
View(suzukii_env_dist)
### genetic matrix
suzukii_linear <- read.csv("D:/01_pop14/Fst_1-Fst_matrix.csv",header = F)
View(suzukii_linear)
####
suzukii_linear[is.na(suzukii_linear)] <- 0 
View(suzukii_linear)

#num_pop means the total number of populations for species
#in this example, num_pop is 14
num_pop <- 14 

trans <- function(raw_data){
  raw_data=raw_data[-1,-1]
  out_data=data.frame(raw_data[,1])
  colnames(out_data)="value"
  for (i in 2:num_pop){
    temp=data.frame(raw_data[i:num_pop,i])
    colnames(temp)="value"
    out_data=rbind(out_data,temp)
  }
  out_data=na.omit(out_data)
  return(out_data)
}

num_nrow <- (num_pop*num_pop - num_pop)/2 + num_pop
num_nrow  

plot_data <- as.data.frame(matrix(nrow = num_nrow,ncol = 0))

plot_data$geo_dit <- trans(suzukii_geo_dit)$value
plot_data$env_dis <- trans(suzukii_env_dist)$value
plot_data$fst_dis <- trans(suzukii_linear)$value
colnames(plot_data) <- c("geo_dit","env_dis","fst_dis")
View(plot_data)
write.csv(plot_data,file="D:/01_pop14/plot_data.csv",quote=F,row.names = F)

plot_data <- read.csv("D:/01_pop14/plot_data.csv",header = T)
View(plot_data)

#remove rows with 0
plot_data <- subset(plot_data,geo_dit != 0)
####################plot IBD ###############################################
ggplot(data=plot_data,aes(x=geo_dit/1000,y=fst_dis))+
  geom_point(aes(x=geo_dit/1000,y=fst_dis),size = 3,alpha=0.7,color="black",shape=21,fill="#708090")+
  geom_smooth(aes(x=geo_dit/1000, y=fst_dis),alpha=0.7,formula = y ~ x, method = lm,se=T,level=0.95,color="#708090",fill="#b8c0c8",size = 1.5,fullrange = F) +
  labs(x = "Geographical Distance (1km)",y = expression(italic(F)[italic(ST)]/(1-italic(F)[italic(ST)])),size = 5.5)+
  panel_border(color = "black", size = 0.6, linetype = 1, remove = FALSE)+
  theme_bw()+
  scale_y_continuous(breaks = seq(0,0.07,0.02),limits = c(0,0.07))+
  annotate("text",x = 500000/1000,y = 0.070, label = "Mantel's r = 0.187",colour="red")+
  annotate("text",x = 500000/1000,y = 0.065, label = "Mantel's p = 0.108",colour="red")+
  theme(text=element_text(family="sans"),
        axis.ticks.length = unit(0.25,"lines"),axis.ticks=element_line(colour="black",unit(0.6,"line")),
        axis.text.x=element_text(size=12,colour = "black"),
        axis.text.y=element_text(size=12,colour = "black"), 
        plot.title = element_text(
          size = 15L,
          hjust = 0
        ),
        axis.title.y = element_text(size = 15),
        axis.title.x = element_text(size = 15),
        panel.background=element_rect(fill="white"),
        plot.background = element_rect(fill = "white"))
        #axis.line.x=element_line(colour="black"),
        #axis.line.y=element_line(colour="black"),
        #panel.border=element_blank(),
        #panel.grid.major =element_blank(), panel.grid.minor = element_blank(),
        #plot.margin=unit(c(0.2,0.2,0.2,0.2),"mm")
