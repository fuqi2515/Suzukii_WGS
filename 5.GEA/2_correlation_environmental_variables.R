#Author:QiFu

library(ggplot2)
library(RColorBrewer)
library(corrplot)


setwd("D:/env_correlation/")

raw_data1 <- read.csv("suzukii_178_env.txt",header = TRUE,sep = "\t")
View(raw_data1)
dim(raw_data1)

kk <- colnames(raw_data1)
kk

kk <- c("lon","lat","alt","bio1","bio2","bio3","bio4","bio5","bio6","bio7",
        "bio8","bio9","bio10","bio11","bio12","bio13","bio14","bio15","bio16","bio17",
        "bio18","bio19","AMWS","AMSR","AMWVP","RCF","RBV")

raw_data <- raw_data1[,kk]

View(raw_data)

col2<- colorRampPalette(c("#77C034","white","#C388FE"),alpha = TRUE)

corrmatrix <- cor(raw_data, method = "spearman")
View(corrmatrix)

color_reverse <- rev(COL2('RdBu', 20))
color_reverse

corrplot(corrmatrix, method = 'circle', type = 'lower', insig='blank',
         addCoef.col ='black',number.cex = 0.6, tl.col = "black", tl.srt = 45, col = color_reverse)

corrplot(corrmatrix, method = 'circle', type = 'lower', insig='blank',
         addCoef.col ='black',number.cex = 0.6, tl.col = "black", tl.srt = 45, col = col2(100))


pdf("China_env_correlation_autosome.pdf",width = 8, height = 8)

corrplot.mixed(corrmatrix,lower.col = "black",number.cex=0.8)

dev.off()