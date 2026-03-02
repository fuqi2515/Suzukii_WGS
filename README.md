# Suzukii_WGS
Scripts for Fu et al (2026) Genomic insights into evolutionary history and local adaptation of the invasive pest Drosophila suzukii

1.Variant-calling  
---
(1) 1_trimmomatic.sh:  Script to process raw reads using Trimmomatic for adapter removal and trimming of low-quality bases.  

(2) 2_mapping_and_statistics.sh: Script to align sequencing reads to the reference genome and retain only those with a mapping quality score ≥ 20, along with generating summary statistics for whole-genome resequencing data.  

(3) 3_GATK_first_gvcf.sh, 4_GATK_first_calling.sh: scripts to perform initial variant calling using the GATK best practices pipeline, including HaplotypeCaller, CombineGVCFs, and GenotypeGVCFs, followed by variant filtering.  

(4) 5_GATK_BQSR.sh:  scripts to perform Base Quality Score Recalibration (BQSR) using GATK’s BaseRecalibrator and ApplyBQSR commands.  

(5) 6_GATK_second_gvcf.sh, 7_GATK_second_calling.sh: scripts to perform secondary variant calling and filtering.  

(6) 8_variant_filter.sh: script to performe a series of filtering steps to extract high-quality variants for downstream analysis.  

(7) 9_SNP_annotation.sh: script to perform snp annotation using SnpEff.  

2.Population_genetics  
---
(1) 1_pca_structure.sh: script to perform SNP filter and Admixture analysis.  

(2) 2_pca.R: script to plot PCA.  

(3) 3_CV_plot.R: script to plot cross-validation (CV) error plot.  

(4) 4_pophelper.R: script to plot ancestor components.  

(5) 5_iqtree.sh: script to perform iqtree analysis.  

(6) 6_pi_Watterson_estimator_Fst.sh: script to calculate Nucleotide diversity (π), Watterson estimator (θw), and inter-population genetic differentiation (Fst).  

(7) 7_LDdecay.sh: script to perform LD decay analysis.  

(8) 8_IBD.R: script to perform IBD analysis.  

3.Local_adaptation  
---
(1) 1_variant_filter_three_major_pops.sh: script to perform a series of filtering steps to extract high-quality genetic variants across three major populations (CN, WUS, and EUS) for downstream analysis.  

(2) 2_get_neutral_snps.sh: script to extract neutral snps located in fourfold degenerate sites and short introns (8-30 bp within introns < 65bp).  

(3) 3_neutral_snp_prune.sh: script to filter neutral snps for population structure analysis.  

(4) 4_vcf2dgm.sh: script to convert vcf to dgm format.  

(5) 5_Ohana_population_structure.sh: script to use Ohana to perform ancestry components analysis.  

(6) 6_Ohana_selection_scan.sh: script to perform population-specific outlier scans following the Ohana protocol (https://github.com/jade-cheng/ohana/wiki/Population-or-ancestry-specific-selection-scan).  

(7) 7_LLRS.R: script to extract top 0.1% candidate SNPs for each population.  

(8) 8_search_candidate_genes.sh: script to get positive selected candidate genes and orthologous genes.  

(9) 9_PBE.sh: script to calculate PBE.  

(10) 10_Gowinda.sh: script to use Gowinda to perform GO enrichment.  

4.Inversion  
---
(1) 1_vcf2bcf.sh: script to convert vcf to bcf.  

(2) 2_local_pca.R: script to perform local PCA analysis.  

(3) 3_LD.sh: script to calculated LD and get the second largest r2 value for each pair of blocks.  

(4) 4_LD_heatmap.R: script to plot LD heatmap.  

5.GEA  
---  
(1) 1_extract_environment_data.R: script to extract 27 environmental and geographic variables for each sampling location.  

(2) 2_correlation_environmental_variables.R: script to calculate pairwise correlations among the variables.  

(3) 3_snp_filter.sh: script to perform snp filtering for GEA analysis.  

(4) 4_snp_imputation.R: script to perform snp imputation.  

(5) 5_GF.R: script to perform gradientForest analysis.  

(6) 6_LFMM.sh: script to perform LFMM analysis.  

(7) 7_RDA.R: script to perform RDA analysis.  

(8) 8_baypass.sh: script to perform baypass analysis.  

(9) 9_pod.R: script to simulate pseudo-observed data (POD) to calculate a significance threshold.  

6.Admixture_inference 
---  
(1) 1_Treemix.sh: script to perform Treemix analysis.  

(2) 2_OptM.R: script to determine a appropriate block size and the optical number of m.  

(3) 3_stat_f2.R: script to calculate f2 statistics.  

(4) 4_admixturetools.sh: script to perform admixture graph analysis.  

(5) 5_sig_test_beteen_m.R: script to assess significant differences between graphs.  

7.Demographic_history_inference 
---  
(1) 1_random_select_one_allele_projection.sh: script to randomly select one allele and perform projection to maximizes the number of segregating SNPs.  

(2) 2_China_fold.blueprint, 2_China_fold.blueprint.sh and 2_China_fold.blueprint.plot.sh: scripts to perform Stairway Plot analysis for Chinese population.  

(3) 

