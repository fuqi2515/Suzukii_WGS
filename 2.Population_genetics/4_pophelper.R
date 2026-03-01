#Author:QiFu
#use pophelper package to plot population structure
#install.packages("remotes")
#remotes::install_github('royfrancis/pophelper')
#load library
library(pophelper)
library(ggplot2)
library(gridExtra)
#check version
packageDescription("pophelper",fields = "Version")

#set the working directory
setwd("D:/02_structure/")

#input files and convert to a 'qlist' using the function readQ()
afiles <- list.files(path="D:/02_structure/Qfile/",full.names=TRUE)

alist <- readQ(files=afiles)

# qlist attributes of all runs
attributes(alist)

alist1 <- alignK(alist[c(1:6)]) #k=2,3,4,5,6,7
#check the order of Q files
attributes(alist1)
# dataframe attributes of the first file
attributes(alist1[[1]])
names(attributes(alist1[[1]]))
#output the first genetic components of individuals
head(alist1[[1]])

#Tabulate runs from a qlist
tr1 <- tabulateQ(qlist=alist1)
tr1
#tabulateQ(qlist=alist,sorttable = FALSE) To keep runs in the original order
#Summarise a tabulated dataframe
summariseQ(tr1)

################Cluster colours#################################### 
clist <- list(
  "shiny"=c("#1D72F5","#DF0101","#77CE61", "#FF9326","#A945FF","#0089B2","#FDF060","#FFA6B2","#BFF217","#60D5FD","#CC1577","#F2B950","#7FB21D","#EC496F","#326397","#B26314","#027368","#A4A4A4","#610B5E"),
  "strong"=c("#11A4C8","#63C2C5","#1D4F9F","#0C516D","#2A2771","#396D35","#80C342","#725DA8","#B62025","#ED2224","#ED1943","#ED3995","#7E277C","#F7EC16","#F8941E","#8C2A1C","#808080"),
  "oceanfive"=c("#00A0B0", "#6A4A3C", "#CC333F", "#EB6841", "#EDC951"),
  "keeled"=c("#48B098", "#91CB62", "#FFEE3B", "#FB9013", "#FF3C28"),
  "vintage"=c("#400F13", "#027368", "#A3BF3F", "#F2B950", "#D93A2B"),
  "muted"=c("#46BDDD","#82DDCE","#F5F06A","#F5CC6A","#F57E6A"),
  "teal"=c("#CFF09E","#A8DBA8","#79BD9A","#3B8686","#0B486B"),
  "merry"=c("#5BC0EB","#FDE74C","#9BC53D","#E55934","#FA7921"),
  "funky"=c("#A6CEE3", "#3F8EAA", "#79C360", "#E52829", "#FDB762","#ED8F47","#9471B4"),
  "retro"=c("#01948E","#A9C4E2","#E23560","#01A7B3","#FDA963","#323665","#EC687D"),
  "cb_paired"=c("#1F78B4","#B2DF8A","#FB9A99","#FF7F00","#E31A1C","#33A02C","#FDBF6F","#CAB2D6","#A6CEE3","#6A3D9A","#FFFF99","#B15928"),
  "cb_set3"=c("#8DD3C7","#FFFFB3","#BEBADA","#FB8072","#80B1D3","#FDB462","#B3DE69","#FCCDE5","#D9D9D9","#BC80BD","#CCEBC5","#FFED6F"),
  "morris"=c("#4D94CC","#34648A","#8B658A","#9ACD32","#CC95CC","#9ACD32","#8B3A39","#CD6601","#CC5C5B","#8A4500"),
  "wong"=c("#000000","#E69F00","#56B4E9","#009E73","#F0E442","#006699","#D55E00","#CC79A7"),
  "krzywinski"=c("#006E82","#8214A0","#005AC8","#00A0FA","#FA78FA","#14D2DC","#AA0A3C","#FA7850","#0AB45A","#F0F032","#A0FA82","#FAE6BE"))

# add length of palettes
lengths <- sapply(clist,length)
names(clist) <- paste0(names(clist),"_",lengths)

par(mar=c(0.2,6,0.2,0))
par(mfrow=c(length(clist),1))

for(i in 1:length(clist)){
  {barplot(rep(1,max(lengths)),col=c(clist[[i]],rep("white",max(lengths)-length(clist[[i]]))),axes=F,border=F)
    text(x=-0.1,y=0.5,adj=1,label=names(clist)[i],xpd=T,cex=1.2)}
}

#############################################################################
setwd("D:/02_structure/")
#read population and individual information into R
label_info <- read.table("reorder_178_sample_info.txt",header = T,sep = "\t", stringsAsFactors = F)
View(label_info)
# length of labels equal to number of individuals?
nrow(label_info)
# check if labels are a character data type
sapply(label_info, is.character)

###add Group labels and individual labels
indlab <- label_info[,1,drop=FALSE]
loclab <- label_info[,2,drop=FALSE]
placelab <- label_info[,3,drop=FALSE]
poplab <- label_info[,4,drop=FALSE]

twolabset <- label_info[,3:4,drop=FALSE]
View(twolabset)


# if all runs are equal length, add indlab to all runs
if(length(unique(sapply(alist1,nrow)))==1) alist1 <- lapply(alist1,"rownames<-",indlab$indi)
# show row names of all runs and all samples
lapply(alist1,rownames)

p1 <- plotQ(alist1,imgoutput="join",returnplot = T,exportplot = F,basesize = 16,sppos = "left",splab = paste0("K = ",sapply(alist1, ncol)),
            grplab = poplab,ordergrp = F, grplabsize = 3,
            showlegend = T,legendrow=1,legendkeysize = 8, legendtextsize = 8,
            clustercol = clist$shiny_19,
            #clustercol = c("#136DA3","#F9766C","#D6A5CC"),
            panelratio = c(9,2),
            grplabspacer = -0.2,
            grplabpos = 0.4,
            grplabangle = 0,
            grplabalpha = 1,
            linesize=0.8,
            #divsize = 1,
            pointsize=3)

grid.arrange(p1$plot[[1]])


#k=2
p1 <- plotQ(alist1[1],returnplot = T,exportplot = F,basesize = 12,sppos = "left",splab = paste0("K = ",sapply(alist1[1], ncol)),
            grplab = poplab,ordergrp = F, grplabsize = 2,grplabface = "bold",
            showlegend = T,legendrow=1,legendkeysize = 8, legendtextsize = 8,
            clustercol = c("#136DA3","#F9766C"),
            panelratio = c(8,1), 
            grplabspacer = -0.2,
            grplabpos = 0.2,
            grplabangle = 0,
            grplabalpha = 1,
            linesize=0.8,
            #divsize = 1,
            divgrp = "pop",
            pointsize=3)
grid.arrange(p1$plot[[1]])
