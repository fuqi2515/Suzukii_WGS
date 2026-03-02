## Produce POD samples
## Kaichi Huang 2019 Sep
#This script is based on code from https://github.com/hkchi/LoStruct_RAD, modified by QiFu to suit the current analysis pipeline.
#please cite below paper if you use this code.
Huang K., Andrew R. L., Owens G. L., Ostevik K. L., Rieseberg L. H. Multiple chromosomal inversions contribute to adaptive divergence of a dune sunflower ecotype. Molecular Ecology 29, 2535-2549 (2020).

#install.packages("mvtnorm")
source("/baypass_public-master/utils/baypass_utils.R")

# Read in the covariance matrix
omega=as.matrix(read.table("all_mat_omega.out"))
# Get estimates (post. mean) of both the a_pi and b_pi parameters of the Pi Beta distribution
pi.beta.coef=read.table("all_summary_beta_params.out",h=T)$Mean
# Original data to obtain total allele count
gt.data<-geno2YN("autosome_baypass.txt")
# Create the POD
pod.data <-simulate.baypass(omega.mat=omega, nsnp=100000, sample.size=gt.data$NN,
                            beta.pi=pi.beta.coef, pi.maf=0, suffix="autosome_baypass.pod")
