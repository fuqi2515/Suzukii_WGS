library("admixtools")
library("tidyverse")
library("plotly")

setwd("/admixturetools2/blgsize_2K")

#compute f2-statistics using extract_f2
genotype_data = "/final_ALT_filter_suzukii_390_neutral_autosome_plink"

f2_dir = "/admixturetools2/blgsize_2K/f2_dir"

extract_f2(genotype_data,f2_dir,
           blgsize = 2000, #need to change based on your project
           maxmiss = 0.1, #need to change based on your project
           minmaf = 0,
           maxmaf = 0.5,
           auto_only = FALSE,
           adjust_pseudohaploid = FALSE,
           afprod = FALSE,
           poly_only = c("f2"),
           apply_corr = TRUE,
           n_cores = 1)
