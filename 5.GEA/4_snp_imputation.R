#Author:QiFu

library(LEA)

setwd("/GEA")

project.missing = snmf("snp.lfmm", K = 2, CPU = 4, entropy = TRUE, repetitions = 10, project = "new")

# select the run with the lowest cross-entropy value
best = which.min(cross.entropy(project.missing, K = 2))

# Impute the missing genotypes
impute(project.missing, "snp.lfmm", method = 'mode', K = 2, run = best)
