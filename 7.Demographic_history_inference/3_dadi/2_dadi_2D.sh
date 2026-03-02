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

dadi-cli InferDM --fs $dir/CNE_SK.20_8_neutral_snps.fold.fs --model no_mig_size --lbounds 1e-3 1e-3 1e-3 1e-3 0 0 --ubounds 20 20 20 20 1 1 --output $out/no_mig_size.demog.params--optimizations 100 --check-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs $dir/CNE_SK.20_8_neutral_snps.fold.fs --model sym_mig_size --lbounds 1e-3 1e-3 1e-3 1e-3 0 0 0 --ubounds 10 10 10 10 30 1 1 --output $out/sym_mig_size.demog.params --optimizations 100 --check-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs $dir/CNE_SK.20_8_neutral_snps.fold.fs --model asym_mig_size --lbounds 1e-3 1e-3 1e-3 1e-3 0 0 0 0 --ubounds 10 10 10 10 30 30 1 1 --output $out/asym_mig_size.demog.params --optimizations 100 --check-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs $dir/CNE_SK.20_8_neutral_snps.fold.fs --model sec_contact_sym_mig --lbounds 1e-3 1e-3 0 0 0 --ubounds 10 10 30 1 1 --output $out/sec_contact_sym_mig.demog.params --optimizations 100 --check-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs $dir/CNE_SK.20_8_neutral_snps.fold.fs --model sec_contact_asym_mig --lbounds 1e-3 1e-3 0 0 0 0 --ubounds 10 10 30 30 1 1 --output $out/sec_contact_asym_mig.demog.params --optimizations 100 --check-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs $dir/CNE_SK.20_8_neutral_snps.fold.fs --model anc_sym_mig_size --lbounds 1e-3 1e-3 1e-3 1e-3 0 0 0 --ubounds 10 10 10 10 20 1 1 --output $out/anc_sym_mig_size.demog.params --optimizations 100 --check-convergence 10 --nomisid --cpus 4

dadi-cli InferDM --fs $dir/CNE_SK.20_8_neutral_snps.fold.fs --model anc_asym_mig_size --lbounds 1e-3 1e-3 1e-3 1e-3 0 0 0 0 --ubounds 10 10 10 10 30 30 1 1 --output $out/anc_asym_mig_size.demog.params --optimizations 100 --check-convergence 10 --nomisid --cpus 4

date
