#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J Treemix
#SBATCH -c 1
#SBATCH -o Treemix.%j.log
#SBATCH --mem 8G

## user's own commands below

module load vcftools/0.1.16

date

#convert vcf to plink format
vcftools --gzvcf ALT_filter_suzukii_390_neutral_autosome_remove_inversion_region_variants.vcf.gz --plink --out final_ALT_filter_suzukii_390_neutral_autosome_plink

#Convert to BED-format
plink --file final_ALT_filter_suzukii_390_neutral_autosome_plink --allow-extra-chr --allow-no-sex --make-bed --out final_ALT_filter_suzukii_390_neutral_autosome_plink

#convert it to a stratified frq file, also creates .bed, .bim, .fam, .log, .nosex
plink --bfile final_ALT_filter_suzukii_390_neutral_autosome_plink --freq --missing --within 10_pops_order_in_vcf.clust --allow-no-sex --allow-extra-chr --out final_ALT_filter_suzukii_390_neutral_autosome_plink_treemix

gzip final_ALT_filter_suzukii_390_neutral_autosome_plink_treemix.frq.strat

#create input file for Treemix
python plink2treemix.py final_ALT_filter_suzukii_390_neutral_autosome_plink_treemix.frq.strat.gz suzukii_10pops_autosome_treemix.frq.gz

#run treemix
for m in {1..1}
do
	for i in {1..100}
	do
		# Generate random seed
		s=$RANDOM
		echo "Random seed = ${s}"
		treemix -i $dir/suzukii_10pops_autosome_treemix.frq.gz -o core.noN.${m}.${i} -root Dsub -m ${m} -global -k 300 -noss -se -seed ${s} >> treemix_${m}.log
	done
done

date
