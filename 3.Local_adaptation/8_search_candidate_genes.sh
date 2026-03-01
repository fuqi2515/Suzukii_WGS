#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J extract_genes
#SBATCH -c 1
#SBATCH -o extract_genes.%j.log
#SBATCH --mem 4G

## user's own commands below

CN=/03.ohana/pop0_specific
EUS=/03.ohana/pop1_specific
WUS=/03.ohana/pop2_specific

date

#step1: search candidate genes
perl search_candidate_genes.pl suzukii_genes_position.txt $CN/top_0.001_LLRS_suzukii.txt candidate_genes_CN_ohana.txt

perl search_candidate_genes.pl suzukii_genes_position.txt $EUS/top_0.001_LLRS_suzukii.txt candidate_genes_EUS_ohana.txt

perl search_candidate_genes.pl suzukii_genes_position.txt $WUS/top_0.001_LLRS_suzukii.txt candidate_genes_WUS_ohana.txt

#step2: search orthologous genes

perl search_orthologous_genes.pl one_to_one_othologous_genes_update.txt more_to_more_othologous_genes.txt candidate_genes_CN_ohana.txt othologous_candidate_genes_CN_ohana.txt

perl search_orthologous_genes.pl one_to_one_othologous_genes_update.txt more_to_more_othologous_genes.txt candidate_genes_EUS_ohana.txt othologous_candidate_genes_EUS_ohana.txt

perl search_orthologous_genes.pl one_to_one_othologous_genes_update.txt more_to_more_othologous_genes.txt candidate_genes_WUS_ohana.txt othologous_candidate_genes_WUS_ohana.txt

date
