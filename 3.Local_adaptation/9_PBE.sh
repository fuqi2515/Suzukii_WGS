#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J pbe
#SBATCH -c 8
#SBATCH -o pbe.%j.log
#SBATCH --mem 32G

## user's own commands below

module load anaconda3

conda activate pixy

date

#step1: calculate Fst
pixy --stats fst --vcf ALT_filter_suzukii_353_keep_18contigs_sites_HQ.vcf.gz --populations 353_order_in_vcf.txt --bed_file contig_Bed.txt --n_cores 8

#step2: get Fst file for each pair of population
perl extract_pops_pairs.pl pixy.txt pops.txt

#step3: calculate T score
perl stat_T_score.pl CN_EUS_fst.txt Tscore_CN_EUS_fst.txt
perl stat_T_score.pl WUS_CN_fst.txt Tscore_WUS_CN_fst.txt
perl stat_T_score.pl WUS_EUS_fst.txt Tscore_WUS_EUS_fst.txt

#step4: combine T score files
perl combine_T_score.pl Tscore_CN_EUS_fst.txt Tscore_WUS_CN_fst.txt Tscore_WUS_EUS_fst.txt CN_EUS WUS_CN WUS_EUS combine_Tscore_fst.txt

#step5: calculate PBS
perl stat_PBS.pl combine_Tscore_fst.txt 4 6 8 population_specific_CN_PBS.txt
perl stat_PBS.pl combine_Tscore_fst.txt 6 8 4 population_specific_WUS_PBS.txt
perl stat_PBS.pl combine_Tscore_fst.txt 4 8 6 population_specific_EUS_PBS.txt

#step6: calculate PBE
perl stat_PBE.pl population_specific_CN_PBS.txt 8 PBE_CN_pop_specific.txt
perl stat_PBE.pl population_specific_WUS_PBS.txt 4 PBE_WUS_pop_specific.txt
perl stat_PBE.pl population_specific_EUS_PBS.txt 6 PBE_EUS_pop_specific.txt

date
