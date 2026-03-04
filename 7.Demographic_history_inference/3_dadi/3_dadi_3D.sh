#!/bin/bash

#slurm options
#SBATCH -p amd-ep2,intel-sc3
#SBATCH -q normal
#SBATCH -J inferDM
#SBATCH -c 4
#SBATCH -o inferDM.%j.log

source ~/miniconda3/bin/activate

conda activate dadi-cli

dir=/fs_files

model=/dadi_3D/models

date

dadi-cli InferDM --fs $dir/CNE_SK_EUS.20_8_20_neutral_snps.fold.fs --model split_BG_nomig --model-file $model/suzukii_two_epoch_models.py --lbounds 1e-3 1e-3 1e-3 1e-3 1e-3 1e-30 0 --ubounds 10 10 10 10 10 10 1 1 --output split_BG_nomig.demog.params --optimizations 100 --check-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs $dir/CNE_SK_EUS.20_8_20_neutral_snps.fold.fs --model split_BG_symmig_all --model-file $model/suzukii_two_epoch_models.py --lbounds 1e-3 1e-3 1e-3 1e-3 1e-31e-3 0 0 0 0 0 0  --ubounds 10 10 10 10 10 10 10 10 10 10 1 1 --output split_BG_symmig_all.demog.params --optimizations 100 --check-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs $dir/CNE_SK_EUS.20_8_20_neutral_snps.fold.fs --model split_BG_symmig_adjacent --model-file $model/suzukii_two_epoch_models.py --lbounds 1e-3 1e-3 1e-3 1e-31e-3 1e-3 0 0 0 0 0  --ubounds 10 10 10 10 10 10 10 10 10 1 1 --output split_BG_symmig_adjacent.demog.params --optimizations 100 --check-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs $dir/CNE_SK_EUS.20_8_20_neutral_snps.fold.fs --model split_BG_asymmig_all --model-file $model/suzukii_two_epoch_models.py --lbounds 1e-3 1e-3 1e-3 1e-3 1e-3 1e-3 0 0 0 0 0 0 0 0 0 0  --ubounds 10 10 10 10 10 10 10 10 10 10 10 10 10 10 1 1 --output split_BG_asymmig_all.demog.params --optimizations 100 --check-convergence 10 --nomisid--cpus 4

dadi-cli InferDM --fs $dir/CNE_SK_EUS.20_8_20_neutral_snps.fold.fs --model split_BG_asymmig_adjacent --model-file $model/suzukii_two_epoch_models.py --lbounds 1e-3 1e-3 1e-3 1e-3 1e-3 1e-3 0 0 0 0 0 0 0 0  --ubounds 10 10 10 10 10 10 10 10 10 10 10 10 1 1 --output split_BG_asymmig_adjacent.demog.params --optimizations 100 --check-convergence 10 --nomisid--cpus 4

date
