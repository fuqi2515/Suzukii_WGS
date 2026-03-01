#!/bin/bash
  
script_dir=/03.ohana/01.structure_inference/k3

for i in {1..20}
do
        script=step3_structure_inference.sh
        mkdir rep${i}
        cd rep${i}
        echo "#!/bin/bash

#slurm options
#SBATCH -p amd-ep2,intel-sc3
#SBATCH -q huge
#SBATCH -J structure_inference
#SBATCH -c 1
#SBATCH -o structure_inference.%j.log
#SBATCH --mem 16G
## user's own commands below

source ~/miniconda3/bin/activate

conda activate ohana

date

out=$script_dir/rep${i}

qpas suzukii_353_keep_18contigs_neutral_SNP.dgm -k 3 -qo \$out/q_neutral.matrix -fo \$out/f_neutral.matrix -mi 30

nemeco suzukii_353_keep_18contigs_neutral_SNP.dgm \$out/f_neutral.matrix -mi 30 -co \$out/cout.matrix

date"  > $script_dir/rep${i}/$script

        sbatch step3_structure_inference.sh
        cd $script_dir/
done
