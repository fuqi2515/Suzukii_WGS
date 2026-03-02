#!/bin/bash

#slurm options
#SBATCH -p amd-ep2,intel-sc3
#SBATCH -q normal
#SBATCH -J inferDM
#SBATCH -c 4
#SBATCH -o inferDM.%j.log

source ~/miniconda3/bin/activate

conda activate dadi-cli

date

dadi-cli InferDM --fs CNE.128_neutral_snps.fold.fs --model snm_1d --output snm_1d.demog.params --optimizations 100 --force-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs CNE.128_neutral_snps.fold.fs --model two_epoch --lbounds 1e-3 0 --ubounds 100 1  --output two_epoch.demog.params --optimizations 100 --force-convergence10 --nomisid --cpus 4

dadi-cli InferDM --fs CNE.128_neutral_snps.fold.fs --model growth --lbounds 1e-3 0 --ubounds 100 1  --output growth.demog.params --optimizations 100 --force-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs CNE.128_neutral_snps.fold.fs --model bottlegrowth_1d --lbounds 1e-6 1e-3 0 --ubounds 100 100 1  --output bottlegrowth_1d.demog.params --optimizations 100 --force-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs CNE.128_neutral_snps.fold.fs --model three_epoch --lbounds 1e-3 1e-3 0 0 --ubounds 100 100 1 1 --output three_epoch.demog.params --optimizations 100 --force-convergence 10 --nomisid --cpus 4

date
