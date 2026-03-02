library(admixtools)
library(tidyverse)
library(plotly)

f2_blocks = f2_from_precomp("/admixturetools2/01.blgsize_2K/f2_dir")

graph1 = read_table2("/admixturetools2/m1/rep2/rep2_graph.tsv",col_names = T)

graph2 = read_table2("/admixturetools2/m2/rep34/rep34_graph.tsv",col_names = T)

nblocks = dim(f2_blocks)[3]
nblocks
train = sample(1:nblocks, round(nblocks/2))
res = qpgraph(data = f2_blocks[,,train], graph1,
              f2_blocks_test = f2_blocks[,,-train])
res$score
res$score_test

print("##########################################################")

res = qpgraph(data = f2_blocks[,,train], graph2,
              f2_blocks_test = f2_blocks[,,-train])
res$score
res$score_test

print("##########################################################")

fits = qpgraph_resample_multi(f2_blocks, list(graph1, graph2), nboot = 100)
compare_fits(fits[[1]]$score_test, fits[[2]]$score_test)

