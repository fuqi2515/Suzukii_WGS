#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J LD
#SBATCH -c 1
#SBATCH -o LD.%j.log
#SBATCH --mem 8G

## user's own commands below

module load vcftools/0.1.16

date

#step1: filter snps
vcftools --gzvcf ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz --chr NW_023496800.1 --maf 0.05 --thin 100 --recode --stdout | bgzip -c >  ALT_filter_NW_023496800.1_native_maf_thin100.vcf.gz

#step2: calculate LD
vcftools --gzvcf ALT_filter_NW_023496800.1_native_maf_thin100.vcf.gz --geno-r2 --stdout | bgzip -c >  chr_maf_NW_023496800.1_thin100_windows.ld.gz

#step3: extract snp position
perl extract_snp_position_from_vcf.pl ALT_filter_NW_023496800.1_native_maf_thin100.vcf.gz snp_position_in_vcf.txt

#step4: split snps into blocks
perl split_snp_position_into_block.pl snp_position_in_vcf.txt 25500000 500000

#step5: get block postion
perl window_position.pl /dir/blocks/  #directory including block files generated in step4

#step6: get the second largest r2 value
perl extract_the_second_largest_R2_values_for_between_window.pl chr_maf_NW_023496800.1_thin100_windows.ld.gz win_0_bp.txt win_500000_bp.txt win_0_win_500000.txt #repeat this step for each pair of blocks

#step7: 
perl make_LD_input_between_window_new.pl /dir/ld_between_block NW_023496800 25500000 500000 all_sample_NW_023496800_top.txt #/dir/ld_between_block including all files generated in step6 

date
