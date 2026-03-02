#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J GF
#SBATCH -c 1
#SBATCH -o GF.%j.log
#SBATCH --mem 8G

## user's own commands below

module load vcftools/0.1.16
module load plink/1.90

date

vcftools --gzvcf ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz --maf 0.05 --recode --recode-INFO-all --stdout | bgzip -c >  ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ_maf.vcf.gz

#Convert VCF-file to Plink-format
vcftools --gzvcf ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ_maf.vcf.gz --plink --out ALT_filter_suzukii_178_keep_25contigs_plink

#Convert to BED-format
plink --file ALT_filter_suzukii_178_keep_25contigs_plink --allow-extra-chr --allow-no-sex --make-bed --out ALT_filter_suzukii_178_keep_25contigs_plink

#LD pruning

plink --bfile ALT_filter_suzukii_178_keep_25contigs_plink --indep-pairwise 50 10 0.2 --allow-extra-chr --allow-no-sex --make-bed --out ALT_filter_suzukii_178_keep_25contigs_plink_LD

#Keep passed SNPs
plink --bfile ALT_filter_suzukii_178_keep_25contigs_plink --extract ALT_filter_suzukii_178_keep_25contigs_plink_LD.prune.in --allow-extra-chr --allow-no-sex --make-bed --out ALT_filter_suzukii_178_keep_25contigs_plink_LD_pass

#Convert bed file back to vcf
plink --bfile ALT_filter_suzukii_178_keep_25contigs_plink_LD_pass --allow-extra-chr --allow-no-sex --recode vcf --out ALT_filter_suzukii_178_keep_25contigs_plink_LD_prune

#convert genotype to 012
vcftools --vcf ALT_filter_suzukii_178_keep_25contigs_plink_LD_prune.vcf --012 --out suzukii_178_keep_25contigs_MAF0.05_miss_LD_pass
sed 's/-1/9/g' suzukii_178_keep_25contigs_MAF0.05_miss_LD_pass.012 | cut -f2- > snp.lfmm

date
