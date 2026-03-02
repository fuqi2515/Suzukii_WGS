#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J stairwayplot
#SBATCH -c 1
#SBATCH -o stairwayplot.%j.log
#SBATCH --mem 4G

date

#convert vcf to haplotype format
perl vcf2haplotype.pl suzukii_China_pop_130_neutral_autosome_variants.vcf.gz suzukii_130_neutral_autosome_variants_haplotype.tsv

#random select one allele
perl random_select_one_allele.pl suzukii_130_neutral_autosome_variants_haplotype.tsv.gz suzukii_130_neutral_autosome_variants_random_haplotype.tsv

bgzip suzukii_130_neutral_autosome_variants_random_haplotype.tsv
#convert haplotype format to dadi input
perl haplotype2dadiSNPs_random_select_one_allele.pl suzukii_130_neutral_autosome_variants_random_haplotype.tsv.gz 130_individuals.txt China China_dadi_1pop_random_snps.txt

#get script to do projection
perl projection_onepop_one_allele_staiwayPlot.pl China_dadi_1pop_random_snps.txt China 130 dadi_1D_China_projections.py

#perform projection to maximizes the number of segregating SNPs
python dadi_1D_China_projections.py

#create site frequency spectrum
python generate_fs.py

date
