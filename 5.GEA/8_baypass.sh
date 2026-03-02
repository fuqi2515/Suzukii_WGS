#!/bin/bash
#
##slurm options
##SBATCH -p intel-sc3,amd-ep2
##SBATCH -q normal
##SBATCH -J bypass
##SBATCH -c 8
##SBATCH -o bypass.%j.log
##SBATCH --mem 4G

date

# Generate input file from VCF
zcat ALT_filter_suzukii_178_keep_18contigs_plink_LD_prune_sampleid.vcf.gz | perl vcf2baypass.pl indi_pop_info.txt autosome_baypass

## Run BayPass under the core model mode to generate covariance matrix
/baypass_public-master/sources/g_baypass -gfile autosome_baypass.txt -outprefix all -nthreads 4

# Run BayPass under the standard covariate model using importance sampling (IS) estimator
/storage/zhenyingLab/fuqi/00.biosoft/baypass_public-master/sources/g_baypass -gfile $dir/autosome_baypass.txt -efile all_env_baypass.txt -omegafile all_mat_omega.out -outprefix all_env_GEA -nthreads 8

date
