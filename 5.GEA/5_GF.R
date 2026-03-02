#Author:QiFu

library(data.table)
library(gradientForest)

setwd("/GEA/gradientForest")

env <- fread("suzukii_178_27_env.txt", header = T, sep = "\t")

preds <- colnames(env)
preds
ncol(env)
nrow(env)

all_SNPs <- fread("suzukii_178_keep_25contigs.txt",header = T, sep = "\t")

specs <- colnames(all_SNPs)
#specs

ncol(all_SNPs)
nrow(all_SNPs)

nSites <- dim(env)[1]
nSites

nSpecs <- dim(all_SNPs)[2]
nSpecs

maxLevel <- floor(log2(0.368*nrow(env)/2))
maxLevel

all_gfmod <- gradientForest(cbind(env, all_SNPs), predictor.vars=colnames(env), response.vars=colnames(all_SNPs), ntree=500, compact=T, nbin =101,maxLevel=maxLevel, trace=T, corr.threshold=0.5)

write.table(all_gfmod$Y, file="all_gf_Y.txt")
write.table(all_gfmod$X, file="all_gf_X.txt")
write.table(all_gfmod$imp.rsq, file="all_gf_impRsq.txt")
#write.table(all_gfmod$overall.imp, file="all_gf_overall_Accuracy_importance.txt")
write.csv(all_gfmod$overall.imp,"Accuracy_importance.csv")

write.table(all_gfmod$overall.imp2, file="all_gf_overall_imp2.txt")
write.table(all_gfmod$result, file="all_gf_result.txt")
write.table(all_gfmod$res.u, file="all_gf_res_u.txt")
write.table(all_gfmod$res, file="all_gf_res.txt")

importance(all_gfmod)
gf_imp_r2 <- as.data.frame(importance(all_gfmod))
write.csv(gf_imp_r2,file = "R2_weighted_importance.csv")

#the predictor overall importance plot
pdf(file="all_predictoroverallimportance.pdf")
plot(all_gfmod,plot.type="O")
dev.off()

most_important <- names(importance(all_gfmod))[1:27]

#par(mgp = c(2, 0.75, 0))

##splits density plots 
pdf(file="all_splitsdensityplots.pdf")
plot(all_gfmod, plot.type="S", imp.vars= most_important, leg.posn="topright", cex.legend=0.4, cex.axis=0.6, cex.lab=0.7, line.ylab=0.9, par.args=list(mgp=c(1.5, 0.5, 0), mar=c(3.1,1.5,0.1,1)))
#plot(all_gfmod, plot.type="S", imp.vars=c("Longitude","Latitude","Altitude","AMWS","AMSR","AMWVP","RCF","RBV","bio12","bio15","bio18","bio16","bio17","bio19","bio8","bio10","bio1","bio13","bio4","bio11","bio9","bio14","bio7","bio6","bio2","bio5","bio3"), leg.posn="topright", cex.legend=0.4, cex.axis=0.6, cex.lab=0.7, line.ylab=0.9, par.args=list(mgp=c(1.5, 0.5, 0), mar=c(3.1,1.5,0.1,1)))
dev.off()

# third plot is the species cumulative plot
pdf(file="all_predictorcumulative.pdf")
plot(all_gfmod, plot.type="C", imp.vars= most_important, show.overall = F, legend = T, leg.posn = "topleft", leg.nspecies = 5, cex.lab = 0.7, cex.legend = 0.4,cex.axis = 0.6, line.ylab = 0.9, par.args = list(mgp = c(1.5,0.5, 0),mar = c(2.5, 1, 0.1, 0.5),omi = c(0,0.3, 0, 0)))
dev.off()

#The fourth plot is the predictor cumulative plot
pdf(file="all_predictorcumulative2.pdf")
plot(all_gfmod, plot.type = "C", imp.vars = most_important, show.species = F, common.scale = T, cex.axis = 0.6, cex.lab = 0.7, line.ylab = 0.9, par.args = list(mgp = c(1.5,0.5, 0), mar = c(2.5, 1, 0.1, 0.5), omi = c(0,0.3, 0, 0)))
dev.off()

#R2
pdf(file="all_R2.pdf")
plot(all_gfmod, plot.type="P", show.names=F, horizontal=F, cex.axis=1, cex.labels=0.7, line=2.5)
dev.off()
