#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J first_calling
#SBATCH -c 1
#SBATCH -o first_calling.%j.log

#SBATCH --mem 32G

## user's own commands below

module load gatk/4.2.6.1
REF=/00.ref

dir=/01.variantCalling/02.first_gvcf

contig_file=/01.contig_file

out=/01.variantCalling/03.first_calling

#Step1: combine gvcf file for each contig
gatk --java-options "-Xmx32G" CombineGVCFs -R $REF/D.suzukii_GCF_013340165.1.fa -O contig_1_combine_first_gvcf.gz -L $contig_file/contig_file_1.list -V $dir/Sample1.gvcf.gz -V $dir/Sample2.gvcf.gz -V $dir/Sample3.gvcf.gz
#Step2: call variants for each contig
gatk --java-options "-Xmx32G" GenotypeGVCFs -R $REF/D.suzukii_GCF_013340165.1.fa -V $dir/contig_1_combine_first_gvcf.gz -O $out/contig_1_raw.vcf.gz -L $contig_file/contig_file_1.list
#Step3: combine vcf files for all contigs
gatk --java-options "-Xmx32G" MergeVcfs -O $out/suzukii.raw.vcf.gz -I $out/contig_1_raw.vcf.gz -I $out/contig_2_raw.vcf.gz -I $out/contig_3_raw.vcf.gz

#Step4: filter variants
#select and filter SNP
gatk --java-options "-Xmx32G" SelectVariants -R $REF/D.suzukii_GCF_013340165.1.fa -V $out/suzukii.raw.vcf.gz -select-type SNP -O $out/suzukii.raw.snp.vcf.gz
gatk --java-options "-Xmx32G" VariantFiltration -R $REF/D.suzukii_GCF_013340165.1.fa -V $out/suzukii.raw.snp.vcf.gz --filter-expression "QD < 2.0 || MQ < 40.0 || FS > 60.0 || SOR > 3.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" --filter-name "Filter" -O $out/suzukii.raw.snp.filter.vcf.gz
gatk --java-options "-Xmx32G" SelectVariants -R $REF/D.suzukii_GCF_013340165.1.fa -V $out/suzukii.raw.snp.filter.vcf.gz --exclude-filtered true -O $out/suzukii.raw.snp.filter.clean.vcf.gz

#select and filter Indel
gatk --java-options "-Xmx32G" SelectVariants -R $REF/D.suzukii_GCF_013340165.1.fa -V $out/suzukii.raw.vcf.gz -select-type INDEL -O $out/suzukii.raw.indel.vcf.gz
gatk --java-options "-Xmx32G" VariantFiltration -R $REF/D.suzukii_GCF_013340165.1.fa -V $out/suzukii.raw.indel.vcf.gz --filter-expression "QD < 2.0 || FS > 200.0 || SOR > 10.0|| ReadPosRankSum < -20.0" --filter-name "Filter" -O $out/suzukii.raw.indel.filter.vcf.gz
gatk --java-options "-Xmx32G" SelectVariants -R $REF/D.suzukii_GCF_013340165.1.fa -V $out/suzukii.raw.indel.filter.vcf.gz --exclude-filtered true -O $out/suzukii.raw.indel.filter.clean.vcf.gz 