#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J annotation
#SBATCH -c 1
#SBATCH -o annotation.%j.log
#SBATCH --mem 16G

## user's own commands below

date

java -Xmx16g -jar /snpEff/snpEff.jar -ud 2000 -v suzukii ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz |gzip >autosome_annotation.vcf.gz

date
