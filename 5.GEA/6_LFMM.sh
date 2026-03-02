#!/bin/bash

genodir=/GEA/01.date/
outdir=/GEA/02.LFMM/
envdir=/GEA//02.LFMM/env_data
script_dir=/GEA/02.LFMM/01.Rscripts

#create Rscript_dir
if [ ! -d $script_dir ];then
mkdir $script_dir
###!!!! be careful !!!
else
	cd $script_dir;rm -rf *
fi

#create outdir
for env_file in $envdir/*.env
do
	env=${env_file##*/}
	echo $env_file
	bio=${env%.*}
	if [ ! -d $script_dir/$bio ];then
		mkdir $script_dir/$bio
	fi
	if [ ! -d $outdir/$bio ];then
		mkdir $outdir/$bio
	fi
	for K in {2..2}
	do
		if [ ! -d $outdir/$bio/k$K ];then
			mkdir $outdir/$bio/k$K
		fi
		cp $envdir/$env $outdir/$bio/k$K
		Rscript=$bio\_k$K.R
		geno=$genodir/snp.lfmm_imputed.lfmm
		lfmm=${geno##*/}
		cp $geno $outdir/$bio/k$K
		file1=${bio}_lambda_k$K.csv
		file2=${bio}_pvalues_k$K.csv
		file3=${bio}_candidates_k$K.csv
		file4=${bio}_zs.table_k$K.csv

		echo "
library(LEA)
setwd(\"$outdir/$bio/k$K\")
project_${bio}_k$K <- lfmm(\"$lfmm\",\"$env\",CPU=4,K = $K,repetitions = 5, iterations=10000,burnin=5000, project = \"new\")
zs.table_${bio}_k$K <- z.scores(project_${bio}_k$K,K = $K, d = 1)
zs <- apply(zs.table_${bio}_k$K, MARGIN = 1, median)
write.csv(zs.table_${bio}_k$K,\"$outdir/$bio/k$K/$file4\")

lambda = median(zs^2)/qchisq(0.5, df = 1)
lambda
write.csv(lambda,\"$outdir/$bio/k$K/$file1\")
p = lfmm.pvalues(project_${bio}_k$K, K = $K)
pvalues = p\$pvalues
write.csv(pvalues,\"$outdir/$bio/k$K/$file2\")
pdf(\"LFMM_$bio.adjust_pvalue_histograms.pdf\")
hist(pvalues, col = \"lightblue\")
dev.off()

pdf(\"LFMM_$bio.adjust_pvalue_manhatan.pdf\")
plot(-log10(pvalues), pch = 19, col = \"blue\", cex = .7)
dev.off()

L = length(pvalues)
L
# expected FDR
alpha = 0.05 
# return a list of candidates with expected FDR alpha.
# Benjamini-Hochberg's algorithm:
w = which(sort(pvalues)< alpha*(1:L)/L)
candidates = order(pvalues)[w]
Lc = length(candidates)
Lc
#candidates
sig_pvalues <- pvalues[candidates]
min(sig_pvalues)
max(sig_pvalues)
write.csv(candidates,\"$outdir/$bio/k$K/$file3\")


library(qvalue)
env_qvalues <- qvalue(pvalues,fdr.level = 0.05)

#load in snp position file
snp_pos <- read.table(\"$genodir/suzukii_178_keep_18contigs_LD_pass.012.pos\",header = F, sep = \"\t\")

snp_info <- cbind(snp_pos,pvalues)

colnames(snp_info) <- c(\"chr\",\"pos\",\"adjust_p\")

snp_info\$qvalue <- env_qvalues\$qvalues

write.table(snp_info,\"$outdir/$bio/k$K/snp_info.txt\",sep = \"\t\",row.names = FALSE,quote = FALSE)"  > $script_dir/$bio/$Rscript
	done
done
