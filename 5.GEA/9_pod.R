## Produce POD samples
## Kaichi Huang 2019 Sep

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
