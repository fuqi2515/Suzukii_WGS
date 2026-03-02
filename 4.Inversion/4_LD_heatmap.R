library(ggplot2)
setwd("D:/window_size_300/NW_023496800/block_size_500kb/")

ld_chrom <- read.table("all_sample_NW_023496800_top.txt",sep = "\t",header = T,stringsAsFactors = FALSE)
head(ld_chrom)
nrow(ld_chrom)

ld_mds <- read.table("common_sample_NW_023496800_bottom.txt",sep = "\t",header = T,stringsAsFactors = FALSE)
head(ld_mds)
nrow(ld_mds)

##position of putative inversion idenfied from local PCA
start <- 12055377
end <- 24153281

pdf("mds01-pos_LD_NW_023496800.pdf", height=8, width=8)
ggplot(ld_chrom,aes(x=win1/1000000,y=win2/1000000)) + theme_classic() +
  geom_tile(aes(fill=max_2_r2)) +
  geom_tile(data=ld_mds, aes(x=win2/1000000,y=win1/1000000,fill=max_2_r2)) +
  scale_fill_gradientn(colours=c("grey95","#0078FF","red"), breaks=c(0,0.25,0.5,0.75,1),limits=c(0,1), name="LD") +
  geom_segment(mapping=aes(x=start/1000000,xend=end/1000000,y=-0.7,yend=-0.7), col="purple",size = 3) +
  geom_segment(mapping=aes(x=-0.7,xend=-0.7,y=start/1000000,yend=end/1000000), col="purple",size = 3) +
  scale_x_continuous(expand=c(0.02,0)) +
  scale_y_continuous(expand=c(0.02,0)) +
  coord_fixed(ratio = 1) +
  xlab("Mbp") + ylab("Mbp") +
  theme(axis.title = element_text(size = 15,face = "bold"))+
  theme(axis.text = element_text(size = 12,face = "bold"))+
  theme(plot.margin = unit(c(0.1,0.1,0.1,0.1), "inches"))
dev.off()
