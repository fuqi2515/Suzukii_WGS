#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J pixy
#SBATCH -c 8
#SBATCH -o pixy.%j.log
#SBATCH --mem 32G

## user's own commands below
#module load anaconda3

source ~/miniconda3/bin/activate
conda activate pixy

date

pixy --stats pi fst watterson_theta \
	--vcf ALT_filter_suzukii_178_keep_25contigs_sites_HQ.vcf.gz \
	--populations ../178_three_pops.txt \
	--window_size 100000 \
	--n_cores 8 \
	--output_folder /04.pxiy

date
