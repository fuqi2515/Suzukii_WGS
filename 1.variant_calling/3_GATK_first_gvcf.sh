#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J first_gvcf
#SBATCH -c 1
#SBATCH -o first_gvcf.%j.log

#SBATCH --mem 16G

## user's own commands below

module load gatk/4.2.6.1
REF=/00.ref


dir=/01.variantCalling/01.mapping

out=/01.variantCalling/02.first_gvcf

gatk HaplotypeCaller -R $REF/D.suzukii_GCF_013340165.1.fa --emit-ref-confidence GVCF -I $dir/SampleID_sorted_dedup_filter.bam -O $out/SampleID.gvcf.gz