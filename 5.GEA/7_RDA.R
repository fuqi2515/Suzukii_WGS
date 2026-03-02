#Author:QiFu

library(vegan)
library(psych)
library(data.table)

setwd("/GEA")

geno <- fread("/GEA/01.date/snp.lfmm_imputed.lfmm",header=F)
env <- read.table("/GEA/China_env_scaled.txt", header = T, sep = "\t")
POP <- read.table("/GEA/01.date/suzukii_178_keep_18contigs_MAF_LD_pass.012.indv",header=F)
LOCI <- read.table("/GEA/01.data/suzukii_178_keep_18contigs_MAF_LD_pass.012.pos_combine.txt",header=F)
dim(geno)
head(POP)
rownames(geno) <- as.character(POP$V1)
colnames(geno) <- as.character(LOCI$V1)
dim(geno)

rownames(geno)
geno[1:3,1:3]

pred <- env[,c(3,4,5,10,20,23,26,28,29)]

# don't conduct scale for env, because the env has been scaled
suzukii.rda <- rda(geno ~ ., data=pred, scale=T)
#suzukii.rda <- rda(geno ~ ., data=pred)

suzukii.rda
RsquareAdj(suzukii.rda)
summary(eigenvals(suzukii.rda, model = "constrained"))

load.rda <- scores(suzukii.rda, choices=c(1:9), display="species")

write.table(load.rda,file="loaduniq_rda.txt", quote=F)

outliers <- function(x,z){
  lims <- mean(x) + c(-1, 1) * z * sd(x)     # find loadings +/-z sd from mean loading
  x[x < lims[1] | x > lims[2]]               # locus names in these tails
}

# if you needed to be very conservative and only identify those loci under very strong selection (i.e., minimize false positive rates), you could increase the number of standard deviations to 3.5.

cand1 <- outliers(load.rda[,1],3)
cand2 <- outliers(load.rda[,2],3)
cand3 <- outliers(load.rda[,3],3)
cand4 <- outliers(load.rda[,4],3)
cand5 <- outliers(load.rda[,5],3)
cand6 <- outliers(load.rda[,6],3)
cand7 <- outliers(load.rda[,7],3)
cand8 <- outliers(load.rda[,8],3)
cand9 <- outliers(load.rda[,9],3)
#cand10 <- outliers(load.rda[,10],3)

ncand <- length(cand1) + length(cand2) + length(cand3) + length(cand4) + length(cand5) + length(cand6) + length(cand7) + length(cand8) + length(cand9)

ncand

cand1 <- cbind.data.frame(rep(1,times=length(cand1)), names(cand1), unname(cand1))
cand2 <- cbind.data.frame(rep(2,times=length(cand2)), names(cand2), unname(cand2))
cand3 <- cbind.data.frame(rep(3,times=length(cand3)), names(cand3), unname(cand3))
cand4 <- cbind.data.frame(rep(4,times=length(cand4)), names(cand4), unname(cand4))
cand5 <- cbind.data.frame(rep(5,times=length(cand5)), names(cand5), unname(cand5))
cand6 <- cbind.data.frame(rep(6,times=length(cand6)), names(cand6), unname(cand6))
cand7 <- cbind.data.frame(rep(7,times=length(cand7)), names(cand7), unname(cand7))
cand8 <- cbind.data.frame(rep(8,times=length(cand8)), names(cand8), unname(cand8))
cand9 <- cbind.data.frame(rep(9,times=length(cand9)), names(cand9), unname(cand9))
#cand10 <- cbind.data.frame(rep(10,times=length(cand10)), names(cand10), unname(cand10))

colnames(cand1) <- colnames(cand2) <- colnames(cand3) <- colnames(cand4) <- colnames(cand5) <- colnames(cand6) <- colnames(cand7) <- colnames(cand8) <- colnames(cand9)<- c("axis","snp","loading")

write.table(cand1,file="cand1.txt",quote=F)
write.table(cand2,file="cand2.txt",quote=F)
write.table(cand3,file="cand3.txt",quote=F)
write.table(cand4,file="cand4.txt",quote=F)
write.table(cand5,file="cand5.txt",quote=F)
write.table(cand6,file="cand6.txt",quote=F)
write.table(cand7,file="cand7.txt",quote=F)
write.table(cand8,file="cand8.txt",quote=F)
write.table(cand9,file="cand9.txt",quote=F)
#write.table(cand10,file="cand10.txt",quote=F)

cand <- rbind(cand1, cand2, cand3, cand4, cand5, cand6, cand7, cand8, cand9)

cand$snp <- as.character(cand$snp)

foo <- matrix(nrow=(ncand), ncol=9)  # 9 columns for 9 predictors
colnames(foo) <- c("lon","lat","alt","bio5","bio15","bio18","AMSR","RCF","RBV")

geno <- as.data.frame(geno)

for (i in 1:length(cand$snp)) {
  nam <- cand[i,2]
  snp.gen <- geno[,nam]
  foo[i,] <- apply(pred,2,function(x) cor(x,snp.gen))
}

cand <- cbind.data.frame(cand,foo)

cand <- cand[!duplicated(cand$snp),]

for (i in 1:length(cand$snp)) {
  bar <- cand[i,]
  cand[i,13] <- names(which.max(abs(bar[4:12]))) # gives the variable 3+9 variables
  cand[i,14] <- max(abs(bar[4:12]))              # gives the correlation
}

colnames(cand)[13] <- "predictor"
colnames(cand)[14] <- "correlation"
write.table(cand,file="cand.txt",quote=F)
table(cand$predictor)

pdf("hist_RDA1.pdf")
hist(load.rda[,1], main="Loadings on RDA1")
dev.off()

pdf("hist_RDA2.pdf")
hist(load.rda[,2], main="Loadings on RDA2")
dev.off()

pdf("hist_RDA3.pdf")
hist(load.rda[,3], main="Loadings on RDA3")
dev.off()

pdf("hist_RDA4.pdf")
hist(load.rda[,4], main="Loadings on RDA4")
dev.off()

pdf("hist_RDA5.pdf")
hist(load.rda[,5], main="Loadings on RDA5")
dev.off()

pdf("hist_RDA6.pdf")
hist(load.rda[,6], main="Loadings on RDA6")
dev.off()

pdf("hist_RDA7.pdf")
hist(load.rda[,7], main="Loadings on RDA7")
dev.off()

pdf("hist_RDA8.pdf")
hist(load.rda[,8], main="Loadings on RDA8")
dev.off()

pdf("hist_RDA9.pdf")
hist(load.rda[,9], main="Loadings on RDA9")
dev.off()

###check Variance Inflation Factors(VIF) for the predictor variables used in the model
vif.cca(suzukii.rda)

pdf("RDA_screen_plot.pdf")
screeplot(suzukii.rda)
dev.off()

#pdf("RDA1_RDA2.pdf")
#plot(suzukii.rda, scaling=3)          # default is axes 1 and 2
#dev.off()

#pdf("RDA1_RDA3.pdf")
#plot(suzukii.rda, choices = c(1, 3), scaling=3)  # axes 1 and 3
#dev.off()

env$pop <- factor(env$pop,levels = c("GD","YN","ZJ","HN","SD","HB","HLJ","AH","JL","JS","LD","LN","SC","SDJN"),
                  labels = c("GD","YN","ZJ","HN","SD","HB","HLJ","AH","JL","JS","LD","LN","SC","SDJN"))

eco <- env$pop

bg <- c("#a6cee3","#A58AFF","#A4A4A4","#FAE6BE","#00B6EB","#1f78b4","#FDF060",
        "#B26314","#4daf4a","#A945FF","#DF0101","#FF9326","#222222","#BFF217")

# axes 1 & 2
pdf("RDA1_RDA2_pop.pdf")
plot(suzukii.rda, type="n", scaling=3)
#points(suzukii.rda, display="species", pch=20, cex=0.7, col="gray32", scaling=3)           # the SNPs
points(suzukii.rda, display="sites", pch=21, cex=1.3, col="gray32", scaling=3, bg=bg[eco]) # the wolves
text(suzukii.rda, scaling=3, display="bp", col="#0868ac", cex=1)                           # the predictors
legend("bottomright", legend=levels(eco), bty="n", col="gray32", pch=21, cex=1, pt.bg=bg)
dev.off()
# axes 1 & 3
pdf("RDA1_RDA3_pop.pdf")
plot(suzukii.rda, type="n", scaling=3, choices=c(1,3))
#points(suzukii.rda, display="species", pch=20, cex=0.7, col="gray32", scaling=3, choices=c(1,3))
points(suzukii.rda, display="sites", pch=21, cex=1.3, col="gray32", scaling=3, bg=bg[eco], choices=c(1,3))
text(suzukii.rda, scaling=3, display="bp", col="#0868ac", cex=1, choices=c(1,3))
legend("topright", legend=levels(eco), bty="n", col="gray32", pch=21, cex=1, pt.bg=bg)
dev.off()
