#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J second_gvcf
#SBATCH -c 1
#SBATCH -o second_gvcf.%j.log
#SBATCH --mem 4G

## user's own commands below

module load gatk/4.2.6.1
REF=/00.ref

dir=/01.variantCalling/04.BQSR

out=/01.variantCalling/05.second_gvcf

gatk --java-options "-Xmx4G" HaplotypeCaller -R $REF/D.suzukii_GCF_013340165.1.fa --emit-ref-confidence GVCF -I $dir/SampleID.recal.bam -O $out/SampleID.recal.gvcf.gz