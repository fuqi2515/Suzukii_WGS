#Author:QiFu
#This script is based on code from below papers, modified by QiFu to suit the current analysis pipeline.
#please cite below paper if you use this code.
Zecca G., Labra M., Grassi F. Untangling the evolution of American wild grapes: Admixed species and how to find them. Frontiers in Plant Science 10, 1814 (2020).
Fitak R. R. OptM: estimating the optimal number of migration edges on population trees using Treemix. Biology Methods and Protocols 6, bpab017 (2021).

BlockDistByChr<-function(K,refline,int=TRUE,inputfile,cex=1,colP='green2',pchP=20, colL='red2',typeL=2){
  if (int){mydata<-read.table(file.choose(),header=F)
  }else{mydata<-read.table(inputfile,header=F)}
  SNPs<-length(mydata[,1])
  blocks<-SNPs%/%K
  discard<-SNPs%%K
  if(discard!= 0){mydata<-head(mydata,-discard)}													# If the number of SNPs is not a multiple of block size (K), 
  IDblocks<-rep(1:blocks,each=K)																	# we discard the remaining SNPs (as TreeMix does).
  datalist<-split(mydata,IDblocks)																# Split using block IDs.
  Mean<-sapply(datalist, function(x) by(x[[4]], x[[1]], mean))									# Within each block,  mean by chromosome.
  M1<-sapply(Mean[-length(Mean)], function(x) if(length(x)==2){x[2]}else{x})						# Vectors to calculate differences.
  M2<-sapply(Mean[-1], function(x) if(length(x)==2){x[1]}else{x})																						
  chrM1<-sapply(Mean[-length(Mean)], function(x) if(length(x)==2){names(x[2])}else{names(x)})		# Ensure that differences are calculated only between consecutive
  chrM2<-sapply(Mean[-1], function(x) if(length(x)==2){names(x[1])}else{names(x)})				# blocks placed on the same chromosome. It is useful in certain 
  samechr<-chrM1==chrM2																			# situations. For example when two consecutive blocks are on two 
  d<-(M2[samechr]-M1[samechr])/1000																# separate chromosomes.										
  plot(d, type='p', col=colP, cex= cex, pch=pchP, main=paste('Block size =', as.character(K),'SNPs'),xlab='Number of pairwise distances', ylab= 'Distance (kb)')
  abline(h=refline, col=colL, lty=typeL)
}	

setwd("D:/block_size/")
BlockDistByChr(K = 50,refline = 2,colP = "purple",colL = "red",cex = 1)
BlockDistByChr(K = 100,refline = 2,colP = "purple",colL = "red",cex = 1)
BlockDistByChr(K = 150,refline = 2,colP = "purple",colL = "red",cex = 1)
BlockDistByChr(K = 200,refline = 2,colP = "purple",colL = "red",cex = 1)
BlockDistByChr(K = 250,refline = 2,colP = "purple",colL = "red",cex = 1)
BlockDistByChr(K = 300,refline = 2,colP = "purple",colL = "red",cex = 1)


#block size
pdf("block_size_300.pdf",width = 8, height = 8)
BlockDistByChr(K = 300,refline = 2,colP = "purple",colL = "red",cex = 1)
dev.off()

#treemix plot
setwd("D:/migration_K300/")

library(RColorBrewer)
library(R.utils)
source("plotting_funcs.R") # here you need to add the path

## inferring the optimal number of migration edges
## use the R package OptM?
library(OptM)

res <- optM(folder = ".", tsv = "outOptM")

View(res)
plot_optM(res, pdf = "plotOptM")

## plot with the optimum number of edges
prefix="core.noN"
edge <- 1
rep <- 8

plot_tree(cex=0.8,paste0(prefix,".",edge,".",rep))
graphics.off()
title("edge = 0")

plot_resid(paste0(prefix,".",edge,".",rep),pop_order="suzukii_pop.list.txt")

#get variation of explained by model
get_f = function(stem){
  d = paste(stem, ".cov.gz", sep = "")
  d2 = paste(stem, ".modelcov.gz", sep = "")
  d = read.table(gzfile(d), as.is = T, comment.char = "", quote = "")
  d2 = read.table(gzfile(d2), as.is = T, comment.char = "", quote = "")
  d = d[order(names(d)), order(names(d))]
  d2 = d2[order(names(d2)), order(names(d2))]
  tmpcf = vector()
  tmpmcf = vector()
  for (j in 1:nrow(d)){
    for (k in (j+1):nrow(d)){
      tmpcf = append(tmpcf, d[j,k])
      tmpmcf = append(tmpmcf, d[j,k] - d2[j,k])
    }
  }
  tmpv = var(tmpmcf)/var(tmpcf)
  return(1-tmpv)
  
}

get_f("core.noN.1.8")

