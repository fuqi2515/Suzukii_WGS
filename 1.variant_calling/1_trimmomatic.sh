#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J trimmomatic
#SBATCH -c 1
#SBATCH -o trimmomatic.%j.log

## user's own commands below

module load trimmomatic/0.39

TruSeq3PE=/trimmomatic_adapters/TruSeq3-PE.fa

trimmomatic PE -threads 1 -phred33 SampleID_1.clean.fq.gz SampleID_2.clean.fq.gz SampleID_paired_1.fq.gz SampleID_unpaired_1.fq.gz SampleID_paired_2.fq.gz SampleID_unpaired_2.fq.gz ILLUMINACLIP:$TruSeq3PE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
