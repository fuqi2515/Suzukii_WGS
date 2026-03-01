#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J snp_prune
#SBATCH -c 1
#SBATCH -o snp_prune.%j.log
#SBATCH --mem 4G

## user's own commands below

module load vcftools/0.1.16
module load plink/1.90

#Convert VCF-file to Plink-format

vcftools --gzvcf suzukii_353_keep_18contigs_neutral_SNP.vcf.gz --plink --out suzukii_353_keep_18contigs_neutral_SNP_plink

#Convert to BED-format
plink --file suzukii_353_keep_18contigs_neutral_SNP_plink --allow-extra-chr --allow-no-sex --make-bed --out suzukii_353_keep_18contigs_neutral_SNP_plink

#LD pruning
plink --bfile suzukii_353_keep_18contigs_neutral_SNP_plink --indep-pairwise 50 10 0.1 --allow-extra-chr --allow-no-sex --make-bed --out suzukii_353_keep_18contigs_neutral_SNP_plink_LD

#Keep passed SNPs
plink --bfile suzukii_353_keep_18contigs_neutral_SNP_plink --extract suzukii_353_keep_18contigs_neutral_SNP_plink_LD.prune.in --allow-extra-chr --allow-no-sex --make-bed --out suzukii_353_keep_18contigs_neutral_SNP_LD_pass

#Convert bed file back to vcf
plink --bfile suzukii_353_keep_18contigs_neutral_SNP_LD_pass --allow-extra-chr --allow-no-sex --recode vcf --out suzukii_353_keep_18contigs_neutral_SNP_LD_pass
