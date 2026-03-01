#Author:QiFu

setwd("D:/03_ohana/")

df <- read.table("scan.txt",header = T,sep = "\t")
head(df)
nrow(df)

#loading snp position 

snpinfo <- read.table("ALT_filter_suzukii_353_keep_18contigs_remove_mask_region_INDEL_variants_HQ.map",header = F,sep = "\t")
head(snpinfo)
nrow(snpinfo)
colnames(snpinfo) <- c("Chr","Col2","Col3","start")

#combine snp information and LLRS information

df_ohana <- cbind(snpinfo[,c(1,4)],df[,c(2:7)])
head(df_ohana)

df_ohana$SNP <- paste(df_ohana$Chr,df_ohana$start,sep = "_")
head(df_ohana)

#write.table(df_ohana,file = "scan_LLRS_suzukii.txt",sep = "\t",quote = F,row.names = F)

top_percentile <- 0.001

# top 0.1% for LLRS
top_LLRS <- df_ohana[with(df_ohana, order(lle.ratio, decreasing = TRUE)[1:floor(nrow(df_ohana) * top_percentile)]), ]
head(top_LLRS)
nrow(top_LLRS)
max(df_ohana$lle.ratio)
tail(top_LLRS)
#view(top_LLRS)

length(unique(top_LLRS$SNP))

#keep top 0.1% candidate SNPs
write.table(top_LLRS,file = "top_0.001_LLRS_suzukii.txt",sep = "\t",quote = F,row.names = F)