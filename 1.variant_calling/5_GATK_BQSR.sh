#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J BQSR
#SBATCH -c 1
#SBATCH -o BQSR.%j.log
#SBATCH --mem 4G

## user's own commands below

module load gatk/4.2.6.1
REF=/00.ref

dir=/01.variantCalling/01.mapping

knownsites=/01.variantCalling/03.first_calling

out=/01.variantCalling/04.BQSR

gatk --java-options "-Xmx4G" BaseRecalibrator -R $REF/D.suzukii_GCF_013340165.1.fa -I $dir/SampleID_sorted_dedup_filter.bam --known-sites $knownsites/suzukii.raw.snp.filter.clean.vcf.gz --known-sites $knownsites/suzukii.raw.indel.filter.clean.vcf.gz -O $out/SampleID.recal.table

gatk --java-options "-Xmx4G" ApplyBQSR -R $REF/D.suzukii_GCF_013340165.1.fa -I $dir/SampleID_sorted_dedup_filter.bam -bqsr $out/SampleID.recal.table -O $out/SampleID.recal.bam