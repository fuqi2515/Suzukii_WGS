#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J mapping
#SBATCH -c 4
#SBATCH -o mapping.%j.log

#SBATCH --mem 32G

## user's own commands below

module load bwa/0.7.17
module load samtools/1.14
module load gatk/4.2.6.1

REF=/00.ref

time bwa mem -t 4 -R '@RG\tID:SampleID\tPL:illumina\tLB:SampleID\tSM:SampleID' $REF/D.suzukii_GCF_013340165.1.fa SampleID_paired_1.fq.gz SampleID_paired_2.fq.gz | samtools view -@ 4 -S -b - -o SampleID.bam

gatk MarkDuplicatesSpark -I SampleID.bam -O SampleID_sorted_dedup.bam -M SampleID_dedup_metrics.txt --remove-all-duplicates true

samtools flagstat SampleID_sorted_dedup.bam >SampleID_sorted_dedup.bam.stat

samtools view -@ 4 -F 4 -q 20 -b SampleID_sorted_dedup.bam -o SampleID_sorted_dedup_filter.bam

samtools index SampleID_sorted_dedup_filter.bam

samtools flagstat SampleID_sorted_dedup_filter.bam >SampleID_sorted_dedup_filter.bam.stat

samtools depth -aa SampleID_sorted_dedup_filter.bam | gzip >SampleID_sorted_dedup_filter.bam.depth.gz