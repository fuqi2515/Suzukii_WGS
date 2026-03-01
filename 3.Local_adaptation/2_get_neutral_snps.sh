#!/bin/bash
  
#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J neutral
#SBATCH -c 1
#SBATCH -o neutral.%j.log
#SBATCH --mem 8G

module load vcftools/0.1.16

date

#step1: snp annotation
java -Xmx8g -jar /snpEff/snpEff.jar -ud 2000 -classic -v suzukii ALT_filter_suzukii_353_keep_18contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz  >suzukii.annotated.eff.format.vcf

#step2: extract SYNONYMOUS snps
python parse_drosoph_snpEff_poly_modified_Qi.py suzukii.annotated.eff.format.vcf synonymous_select.txt

bgzip synonymous_select.txt
# get position of SYNONYMOUS snps
perl extract_synonymous_position.pl synonymous_select.txt.gz position_synonymous.txt

#step3: get a vcf file including all SYNONYMOUS snps
vcftools --gzvcf ALT_filter_suzukii_353_keep_18contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz --positions position_synonymous.txt --recode --stdout | bgzip -c > suzukii_synonymous_variants.vcf.gz

tabix suzukii_synonymous_variants.vcf.gz

#step4: extract neutral snps located in short introns (8-30 bp within introns < 65bp)
bed_file=/short_introns

vcftools --gzvcf ALT_filter_suzukii_353_keep_18contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz --bed $bed_file/neutral_sites.bed --remove-indels --min-alleles 2 --max-alleles 2 --recode --stdout | bgzip -c >  suzukii_neutral_short_intron_variants.vcf.gz

tabix suzukii_neutral_short_intron_variants.vcf.gz

#step5: conbine neutral sites

bcftools concat --allow-overlaps suzukii_synonymous_variants.vcf.gz suzukii_neutral_short_intron_variants.vcf.gz -O z -o suzukii_353_keep_18contigs_neutral_SNP.vcf.gz

date
