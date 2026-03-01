#Author:QiFu

library("SNPRelate")
library("gdsfmt")

setwd("D:/01_pca/")
# uses your own VCF file:
vcf.fn <- "suzukii_178_keep_18contigs_prune_1kb.recode.vcf"
# Reformat
snpgdsVCF2GDS(vcf.fn,"suzukii.gds",method = "biallelic.only")
#Summary
snpgdsSummary("suzukii.gds")

## Open the GDS file
suzukiifile <- snpgdsOpen("suzukii.gds")

# extract sample id
sample.id <- read.gdsn(index.gdsn(suzukiifile,"sample.id"))

# don't given LD 
pca <- snpgdsPCA(suzukiifile,num.thread = 4)
# variance proportion (%)
pc.percent <- pca$varprop*100
head(round(pc.percent, 2))

# Get population information
pop_code <- scan("pop_info_178.txt", what=character())
# assume the order of sample IDs is as the same as population codes
head(cbind(sample.id, pop_code))
tab <- data.frame(sample.id = pca$sample.id,
                  pop = factor(pop_code)[match(pca$sample.id, sample.id)],
                  EV1 = pca$eigenvect[,1],    # the first eigenvector
                  EV2 = pca$eigenvect[,2],    # the second eigenvector
                  EV3 = pca$eigenvect[,3],
                  stringsAsFactors = FALSE)

View(tab)

write.csv(tab,file = "pca_178_maf0.05_miss0.1_1kb_prune_Xcontigs.csv",row.names = F)
#change pop name in figure

tab$pop <- factor(tab$pop,levels = c("CN_YN","CN_SC","CN_East"),
                  labels = c("CN_YN","CN_SC","CN_East"))

library(ggplot2)

#plot pcs for multiple pops based on shapes colors
#pc1 and pc2
scaleFUN <- function(x) sprintf("%.1f",x) 

pdf("pca_178_pc1_pc2_new2.pdf",width = 7, height = 6)
ggplot(tab,aes(EV1,EV2,group=pop))+
  geom_point(aes(color=pop),alpha=1,size=2)+
  scale_color_manual(values = c("CN_SC"="#D6A5CC","CN_YN"="#F9766C","CN_East"="#136DA3"))+ 
  labs(x="PC1 (2.10%)",y="PC2 (1.02%)")+
  #coord_fixed(ratio = .8)+
  theme(axis.title = element_text(size = 10,face = "bold"))+
  theme_bw()+
  scale_y_continuous(breaks = seq(-0.45,0.35,0.2),limits = c(-0.45,0.35),
                     labels = scaleFUN)+
  #scale_x_continuous(breaks = seq(-0.1,0.35,0.1),limits = c(-0.1,0.35))+
  theme(legend.title = element_blank())+ 
  theme(legend.background = element_rect(fill = "white"))
dev.off()

# close the GDS file
snpgdsClose(suzukiifile)
