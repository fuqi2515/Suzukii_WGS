#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J GONE
#SBATCH -c 1
#SBATCH -o GONE.%j.log
#SBATCH --mem 4G

## user's own commands below

module load vcftools/0.1.16
module load plink/1.90

date

#random select one allele for Chinese population
perl generate_haploid_vcf.pl ALT_suzukii_130_keep_7contigs_remove_mask_region_inversion_variants_HQ.vcf.gz random_one_allele_ALT_suzukii_130_keep_7contigs_remove_mask_region_inversion_variants_HQ.vcf.gz

for K in {1..7}
do
	echo K=$K;
	vcftools --gzvcf random_one_allele_ALT_suzukii_130_keep_7contigs_remove_mask_region_inversion_variants_HQ.vcf.gz --chr $K --recode --stdout | bgzip -c >  China_130_chr$K\.vcf.gz
done

for K in {1..7}
do
	echo K=$K;
	vcftools --gzvcf China_130_chr$K\.vcf.gz --plink --out chr$K
	echo "** Converted vcf to ped & map done **"
done

cut -f 2 chr1.map >snps_chr1.map
shuf -n 1000000 snps_chr1.map >subset_chr1.snps

cut -f 2 chr2.map >snps_chr2.map
shuf -n 1000000 snps_chr2.map >subset_chr2.snps

cut -f 2 chr3.map >snps_chr3.map
shuf -n 1000000 snps_chr3.map >subset_chr3.snps

#below choromosome has less than 1,000,000 snp, so do not randomly select snps
cut -f 2 chr4.map >subset_chr4.snps

cut -f 2 chr5.map >subset_chr5.snps

cut -f 2 chr6.map >subset_chr6.snps

cut -f 2 chr7.map >subset_chr7.snps

cat subset_chr1.snps subset_chr2.snps subset_chr3.snps subset_chr4.snps subset_chr5.snps subset_chr6.snps subset_chr7.snps >final_snps_used.txt

vcftools --gzvcf random_one_allele_ALT_suzukii_130_keep_7contigs_remove_mask_region_inversion_variants_HQ.vcf.gz --snps final_snps_used.txt --recode --stdout | bgzip -c >  final_China_keep_7contigs_remove_mask_region_variants_HQ.vcf.gz

plink --vcf final_China_keep_7contigs_remove_mask_region_variants_HQ.vcf.gz --allow-no-sex --recode --out final_China_keep_7contigs_remove_mask_region_inversion

#run GONE
bash script_GONE.sh final_China_keep_7contigs_remove_mask_region_inversion

date
