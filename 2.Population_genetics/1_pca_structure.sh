#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J pca_structure
#SBATCH -c 1
#SBATCH -o pca_structure.%j.log
#SBATCH --mem 8G

## user's own commands below

module load vcftools/0.1.16

date

#step1: fiter snps based on MAF
vcftools --gzvcf ALT_filter_suzukii_178_keep_18contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz --maf 0.05 --recode --stdout | bgzip -c >ALT_filter_suzukii_178_keep_18contigs_remove_mask_region_INDEL_MAF_variants_HQ.vcf.gz

#step2: prune SNPs
vcftools --gzvcf ALT_filter_suzukii_178_keep_18contigs_remove_mask_region_INDEL_MAF_variants_HQ.vcf.gz --thin 1000 --recode --recode-INFO-all --out suzukii_178_keep_18contigs_prune_1kb

#step3: use Admixture to perform structure analyses

#Convert VCF-file to Plink-format
vcftools --vcf suzukii_178_keep_18contigs_prune_1kb.recode.vcf --plink --out suzukii_178_keep_18contigs_plink_1kb

#Convert Plink-format to BED-format
plink --file suzukii_178_keep_18contigs_plink_1kb --allow-extra-chr --allow-no-sex --make-bed --out suzukii_178_keep_18contigs_plink_1kb

# run Admixture
#k = number of clusters
#i = number of replicates for each value of k
#s = random seed

for i in {1..10}
do
	mkdir rep${i}
	cd rep${i}
	for k in {1..7}
	do
		#Generate random seed
		s=$RANDOM
		/admixture_linux-1.3.0/admixture -s ${s} \
			--cv=10 -j4 \
			suzukii_178_keep_18contigs_plink_1kb.bed ${k} | tee log${k}.${i}.out
	done
	cd ..
done

date
