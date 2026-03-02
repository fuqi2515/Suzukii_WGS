#!/bin/bash
  
f2_dir=/admixturetools2/01.blgsize_2K
outdir=/admixturetools2/m1
script_dir=$outdir/01.Rscripts
m=1

#create Rscript_dir
if [ ! -d $script_dir ];then
mkdir $script_dir
###!!!! be careful !!!
else
        cd $script_dir;rm -rf *
fi

#create outdir
for i in {21..50}
do
	rep=rep${i}
	if [ ! -d $outdir/$rep ];then
                mkdir $outdir/$rep
        fi
	
	Rscript=rep${i}.R

	echo "
library(admixtools)
library(tidyverse)
library(plotly)

setwd(\"$outdir/$rep\")

f2_blocks = f2_from_precomp(\"$f2_dir/f2_dir\")

rep${i}_opt_results = find_graphs(f2_blocks, numadmix = $m, outpop = 'Dsub', stop_gen = 100, stop_gen2 = 15)

winner_rep${i} = rep${i}_opt_results %>% slice_min(score, with_ties = FALSE)
winner_rep${i}\$score[[1]]
write.table(winner_rep${i}\$score[[1]], file = \"rep${i}_score.txt\",sep = \"\t\", row.names = FALSE, quote = FALSE)

pdf(\"rep${i}.pdf\",width = 10, height = 10)
plot_graph(winner_rep${i}\$edges[[1]])
dev.off()

rep${i}_graph = as.data.frame(winner_rep${i}\$edges)
write.table(rep${i}_graph, file = \"rep${i}_graph.tsv\",sep = \"\t\", row.names = FALSE, quote = FALSE)" > $script_dir/$Rscript
done
