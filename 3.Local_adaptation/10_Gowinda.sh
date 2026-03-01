#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J go_enrichment
#SBATCH -c 4
#SBATCH -o go_enrichment.%j.log
#SBATCH --mem 16G

## user's own commands below

date

java -Xmx16g -jar /Gowinda/Gowinda-1.12.jar --snp-file global_total_snps.txt --candidate-snp-file final_CN_candidate_SNP.txt --gene-set-file suzukii_goassociations_18autosomes.txt --annotation-file suzukii_single_copy_18_autosome.gtf --simulations 10000000 --min-significance 1 --gene-definition gene --threads 4 --output-file GO_CN.txt --mode gene --min-genes 1

java -Xmx16g -jar /Gowinda/Gowinda-1.12.jar --snp-file global_total_snps.txt --candidate-snp-file final_EUS_candidate_SNP.txt --gene-set-file suzukii_goassociations_18autosomes.txt--annotation-file suzukii_single_copy_18_autosome.gtf --simulations 10000000 --min-significance 1 --gene-definition gene --threads 4 --output-file GO_EUS.txt --mode gene --min-genes 1

java -Xmx16g -jar /Gowinda/Gowinda-1.12.jar --snp-file global_total_snps.txt --candidate-snp-file final_WUS_candidate_SNP.txt --gene-set-file suzukii_goassociations_18autosomes.txt--annotation-file suzukii_single_copy_18_autosome.gtf --simulations 10000000 --min-significance 1 --gene-definition gene --threads 4 --output-file GO_WUS.txt --mode gene --min-genes 1

date
