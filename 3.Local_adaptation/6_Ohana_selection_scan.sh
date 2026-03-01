#!/bin/bash
  
#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J selection
#SBATCH -c 1
#SBATCH -o selection.%j.log
#SBATCH --mem 32G

## user's own commands below

source ~/miniconda3/bin/activate

conda activate ohana

date

qmatrix=/03.ohana/01.structure_inference/k3/rep1

out=/03.ohana/pop0_specific

qpas ALT_filter_suzukii_353_keep_18contigs_remove_mask_region_INDEL_variants_HQ.dgm -k 3 -qi $qmatrix/q_neutral.matrix -fo $out/f_full.matrix -mi 30 -fq

selscan ALT_filter_suzukii_353_keep_18contigs_remove_mask_region_INDEL_variants_HQ.dgm $out/f_full.matrix $qmatrix/cout.matrix -cs $out/cs.matrix >scan.txt

date
