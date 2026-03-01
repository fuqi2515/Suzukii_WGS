#!/bin/bash
  
#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J format
#SBATCH -c 1
#SBATCH -o format.%j.log
#SBATCH --mem 4G

## user's own commands below

module load vcftools/0.1.16
module load plink/1.90

source ~/miniconda3/bin/activate

conda activate ohana

date

#step1: convert VCF-file to Ped-format

#neutral data
plink --vcf suzukii_353_keep_18contigs_neutral_SNP_LD_pass_sampleid.vcf --keep-allele-order --allow-extra-chr --allow-no-sex --recode12 --tab --out suzukii_353_keep_18contigs_neutral_SNP

## full genome data
plink --vcf ALT_filter_suzukii_353_keep_18contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz --keep-allele-order --allow-extra-chr --allow-no-sex --recode12 --tab --out ALT_filter_suzukii_353_keep_18contigs_remove_mask_region_INDEL_variants_HQ

#step2: convert ped to dgm format
convert ped2dgm suzukii_353_keep_18contigs_neutral_SNP.ped suzukii_353_keep_18contigs_neutral_SNP.dgm

convert ped2dgm ALT_filter_suzukii_353_keep_18contigs_remove_mask_region_INDEL_variants_HQ.ped ALT_filter_suzukii_353_keep_18contigs_remove_mask_region_INDEL_variants_HQ.dgm

date
