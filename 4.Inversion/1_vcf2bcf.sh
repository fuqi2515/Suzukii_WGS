#!/bin/bash
#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J vcf2bcf
#SBATCH -c 1
#SBATCH -o vcf2bcf.%j.log
#SBATCH --mem 8G

## user's own commands below

module load bcftools/1.14

date

gzip -d ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz 

bcftools convert -O b ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.vcf -o ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.bcf

bcftools index ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.bcf

bgzip ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.vcf 

date
