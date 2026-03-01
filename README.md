# Suzukii_WGS
Scripts for Fu et al (2026) Genomic insights into evolutionary history and local adaptation of the invasive pest Drosophila suzukii

1.Variant-calling  
---
(1) 1_trimmomatic.sh:  Script to process raw reads using Trimmomatic for adapter removal and trimming of low-quality bases.  

(2) 2_mapping_and_statistics.sh: Script to align sequencing reads to the reference genome and retain only those with a mapping quality score ≥ 20, along with generating summary statistics for whole-genome resequencing data.  

(3) 3_GATK_first_gvcf.sh, 4_GATK_first_calling.sh: scripts to perform initial variant calling using the GATK best practices pipeline, including HaplotypeCaller, CombineGVCFs, and GenotypeGVCFs, followed by variant filtering.  

(4) 5_GATK_BQSR.sh:  scripts to perform Base Quality Score Recalibration (BQSR) using GATK’s BaseRecalibrator and ApplyBQSR commands.  

(5) 6_GATK_second_gvcf.sh, 7_GATK_second_calling.sh: scripts to perform secondary variant calling and filtering.  

(6) 8_variant_filter.sh: script to performe multiple filtering steps to get high-quality variants for downstream analysis.  

(7) 9_SNP_annotation.sh: script to perform snp annotation using SnpEff.  

2.Population_genetics  
---
(1) 

