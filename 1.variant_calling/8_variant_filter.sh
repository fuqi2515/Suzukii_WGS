#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J filter
#SBATCH -c 1
#SBATCH -o filter.%j.log
#SBATCH --mem 4G

## user's own commands below

module load gatk/4.2.6.1
module load bcftools/1.14
module load vcftools/0.1.16

#step1: keep bi-allelic and invariant sites
gatk --java-options "-Xmx4G" SelectVariants -V suzukii.raw.recal.snp.filter.clean.vcf.gz --restrict-alleles-to BIALLELIC -O suzukii_178.raw.recal.snp.filter.clean.biallelic.vcf.gz

gatk --java-options "-Xmx8G" SelectVariants -V suzukii.raw.recal.vcf.gz -select-type NO_VARIATION -O suzukii_178.raw.recal.invariants.vcf.gz

#step2: genotypes with read depth (DP) < 2 and genotype quality (GQ) < 10 were treated as missing
bcftools filter -i '(FMT/DP>=2 & FMT/RGQ>=10) | (FMT/DP>=2 & FMT/GQ>=10)' -S . -O z -o suzukii_178_biallelic_HQ.vcf.gz suzukii_178.raw.recal.snp.filter.clean.biallelic.vcf.gz

tabix suzukii_178_biallelic_HQ.vcf.gz

bcftools filter -i '(FMT/DP>=2 & FMT/RGQ>=10) | (FMT/DP>=2 & FMT/GQ>=10)' -S . -O z -o suzukii_178_invariant_HQ.vcf.gz suzukii_178.raw.recal.invariants.vcf.gz

tabix suzukii_178_invariant_HQ.vcf.gz

#step3: keep 18 autosome contigs and remove sites located in repetitive region
#filter variant sites
vcftools --gzvcf suzukii_178_biallelic_HQ.vcf.gz --chr NW_023496800.1 --chr NW_023496812.1 --chr NW_023496807.1 --chr NW_023496808.1 --chr NW_023496835.1 --chr NW_023496836.1 --chr NW_023496837.1 --chr NW_023496816.1 --chr NW_023496817.1 --chr NW_023496819.1 --chr NC_050699.1 --chr NW_023496810.1 --chr NW_023496822.1 --chr NW_023496828.1 --chr NW_023496803.1 --chr NW_023496833.1 --chr NW_023496834.1 --chr NW_023496804.1 --chr NW_023496841.1 --chr NW_023496842.1 --chr NW_023496843.1 --chr NW_023496844.1 --chr NW_023496845.1 --chr NW_023496846.1 --chr NW_023496847.1 --exclude-positions repeat_region_postion.txt --max-missing 0.9 --remove-filtered LowQual --recode --stdout | bgzip -c >  suzukii_178_keep_25contigs_remove_mask_region_variants_HQ.vcf.gz

# remove sites with ALT collumn marked with * in vcf
perl remove_ALT_with_no_info.pl suzukii_178_keep_25contigs_remove_mask_region_variants_HQ.vcf.gz  ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_variants_HQ.vcf.gz

# remove sites within 3 bp of indels
vcftools --gzvcf ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_variants_HQ.vcf.gz --exclude-bed INDEL_flanking_3bp.bed --remove-indels --remove-filtered LowQual --recode --stdout | bgzip -c >  ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz

tabix ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz

#step4: keep 18 autosome contigs and remove sites located in repetitive region
#filter invariant sites
vcftools --gzvcf suzukii_178_invariant_HQ.vcf.gz --chr NW_023496800.1 --chr NW_023496812.1 --chr NW_023496807.1 --chr NW_023496808.1 --chr NW_023496835.1 --chr NW_023496836.1 --chr NW_023496837.1 --chr NW_023496816.1 --chr NW_023496817.1 --chr NW_023496819.1 --chr NC_050699.1 --chr NW_023496810.1 --chr NW_023496822.1 --chr NW_023496828.1 --chrNW_023496803.1 --chr NW_023496833.1 --chr NW_023496834.1 --chr NW_023496804.1 --chr NW_023496841.1 --chr NW_023496842.1 --chr NW_023496843.1 --chr NW_023496844.1 --chr NW_023496845.1 --chr NW_023496846.1 --chr NW_023496847.1 --exclude-positions repeat_region_postion.txt --max-missing 0.9 --max-maf 0 --max-alleles 1 --remove-filtered LowQual --recode --stdout | bgzip -c >  suzukii_178_keep_25contigs_remove_mask_region_invariants_HQ.vcf.gz

#remove sites with ALT collumn marked with * in vcf
perl remove_ALT_with_no_info.pl suzukii_178_keep_25contigs_remove_mask_region_invariants_HQ.vcf.gz ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_invariants_HQ.vcf.gz

vcftools --gzvcf ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_invariants_HQ.vcf.gz --exclude-bed INDEL_flanking_3bp.bed --max-maf 0 --max-alleles 1 --remove-filtered LowQual --recode --stdout | bgzip -c > ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_invariants_HQ.vcf.gz

tabix ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_invariants_HQ.vcf.gz

#combine the two VCFs using bcftools concat
bcftools concat --allow-overlaps ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_invariants_HQ.vcf.gz -O z -o ALT_filter_suzukii_178_keep_25contigs_sites_HQ.vcf.gz

tabix ALT_filter_suzukii_178_keep_25contigs_sites_HQ.vcf.gz
