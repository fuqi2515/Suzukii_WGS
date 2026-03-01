#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q huge
#SBATCH -J MLtree
#SBATCH -c 16
#SBATCH -o MLtree.%j.log
#SBATCH --mem 64G

source ~/miniconda3/bin/activate

conda activate iqtree

date

#step1: convert vcf to php format
python3 vcf2phylip.py -i suzukii_390_keep_18contigs_1kb_variants_HQ.vcf.gz -m 4 -o DS1 --output-prefix suzukii_390_keep_18contigs_1kb

#step2: perform iqtree analysis
iqtree -s suzukii_390_keep_18contigs_1kb.min4.phy --seqtype DNA -m GTR+G -B 1000 --bnni -T 16 --mem 64G --prefix suzukii_ML_1KB

date
