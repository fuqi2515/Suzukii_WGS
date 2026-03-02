library(lostruct)
library(tidyverse)
library(Matrix)

setwd("/localpca/")

window_size <- 300 # window size = 300 SNPs
k_kept <- 40 # Number of MDS kept
min_windows <- 4 # Minimum number of windows to call outlier regions
max_distance_between_outliers <- 10 # Max distance between oulier windows
n_permutations <- 1000 # Number of permutation for chromosomal clustering test
min_cor <- 0.8 # Correlation theshold for collapsing MDS

##sample information
samples <- read.table("/localpca/samples_178_in_bcf.txt",header = F)

# LoStruct
bcf.file <- "/ALT_filter_suzukii_178_keep_25contigs_remove_mask_region_INDEL_variants_HQ.bcf"

sites <- vcf_positions(bcf.file)

win.fn.snp <- vcf_windower(bcf.file, size=window_size, type="snp", sites=sites)

snp.pca <- eigen_windows(win.fn.snp, k=2, mc.cores=4) # Local PCA
write.csv(snp.pca,"snp.pca.csv")

pcdist <- pc_dist(snp.pca, mc.cores=4) #Distance matrix for MDS (NA removed)

na.wins <- is.na(snp.pca[,1])

pcdist <- pcdist[!na.wins, !na.wins]

nan.wins <- pcdist[,1]=="NaN"

pcdist <- pcdist[!nan.wins, !nan.wins]
write.csv(pcdist,"pcdist.csv")

mds <- cmdscale(pcdist, eig=TRUE, k=k_kept)

mds.coords <- mds$points

colnames(mds.coords) <- paste("MDS coordinate", 1:ncol(mds.coords))
write.csv(mds.coords,"mds.coords.csv")

win.regions <- region(win.fn.snp)()
win.regions <- win.regions[!na.wins,][!nan.wins,]

win.regions %>% mutate(mid=(start+end)/2) -> win.regions

for (k in 1:k_kept){
  name = paste("mds", str_pad(k, 2, pad = "0"), sep="")
  win.regions$tmp <- "NA"
  win.regions <- win.regions %>% rename(!!name := tmp)
}

for (i in 1:k_kept){
  j = i + 4
  win.regions[,j] <- mds.coords[,i]
}

win.regions$n <- 1:nrow(win.regions)
str(win.regions)

write.csv(win.regions,"win.regions.csv")

# Look for "chromosomally clustered" windows along each MDS coordinate (in both positive and negetive directions)

mds_pcs <- colnames(win.regions)[5:(ncol(win.regions)-1)]
mds_pcs

mds_clustering <- tibble(mds_coord=character(), direction=character(), clust_pvalue=numeric(), outliers=numeric(), n1_outliers=numeric(),
                         high_cutoff=numeric(), lower_cutoff=numeric(), chr=character())

for (mds_chosen in mds_pcs){
  print(paste("Processing",mds_chosen))
  win.regions %>%
    mutate_(the_mds=mds_chosen) %>%
    summarize(sd_mds=sd(the_mds)) %>% pull() -> sd_mds
  mds_high_cutoff <- sd_mds*4
  mds_low_cutoff <- sd_mds*3

  win.regions %>%
    mutate_(the_mds=mds_chosen) %>%
    mutate(sd_mds=sd(the_mds)) %>%
    filter(the_mds > (sd_mds*4)) -> pos_windows
  if (nrow(pos_windows) >= min_windows){
    permutations <- matrix(nrow=n_permutations, ncol=1)
    for (i in 1:n_permutations){
      max_1 <- win.regions %>% sample_n(nrow(pos_windows)) %>% group_by(chrom) %>% summarize(count=n()) %>% arrange(desc(count)) %>% head(n=1) %>%
        ungroup() %>% summarize(sum=sum(count)) %>% pull(sum)
      permutations[i,1] <- max_1
    }
    pos_windows %>% group_by(chrom) %>% summarize(count=n()) %>% arrange(desc(count)) %>% head(n=1) %>%
      ungroup() %>% summarize(sum=sum(count)) %>% pull(sum) -> sampled_max_1
    pos_windows %>% group_by(chrom) %>% summarize(count=n()) %>% arrange(desc(count)) %>% head(n=1) %>%
      pull(chrom) -> clustered_chr
    x <- as.tibble(permutations) %>% filter(V1 >= sampled_max_1) %>% nrow()
    pvalue <- (x+1)/(n_permutations+1)
    tmp <- tibble(mds_coord=as.character(mds_chosen), direction=as.character("pos"), clust_pvalue=as.numeric(pvalue), outliers=as.numeric(nrow(pos_windows)),
                  n1_outliers=as.numeric(sampled_max_1), high_cutoff=as.numeric(mds_high_cutoff), lower_cutoff=as.numeric(mds_low_cutoff), chr=as.character(clustered_chr))
    mds_clustering <- rbind(mds_clustering, tmp)
  }else{
    tmp <- tibble(mds_coord=as.character(mds_chosen), direction=as.character("pos"), clust_pvalue=as.numeric(NA), outliers=as.numeric(nrow(pos_windows)),
                  n1_outliers=as.numeric(NA), high_cutoff=as.numeric(NA), lower_cutoff=as.numeric(NA), chr=as.numeric(NA))
    mds_clustering <- rbind(mds_clustering, tmp)
  }

  win.regions %>%
    mutate_(the_mds=mds_chosen) %>%
    mutate(sd_mds=sd(the_mds)) %>%
    filter(the_mds < -(sd_mds*4)) -> neg_windows
  if (nrow(neg_windows) >= min_windows){
    permutations <- matrix( nrow=n_permutations, ncol=1)
    for (i in 1:n_permutations){
      max_1 <- win.regions %>% sample_n(nrow(neg_windows)) %>% group_by(chrom) %>% summarize(count=n()) %>% arrange(desc(count)) %>% head(n=1) %>%
        ungroup() %>% summarize(sum=sum(count)) %>% pull(sum)
      permutations[i,1] <- max_1
    }
    neg_windows %>% group_by(chrom) %>% summarize(count=n()) %>% arrange(desc(count)) %>% head(n=1) %>%
      ungroup() %>% summarize(sum=sum(count)) %>% pull(sum) -> sampled_max_1
    neg_windows %>% group_by(chrom) %>% summarize(count=n()) %>% arrange(desc(count)) %>% head(n=1) %>%
      pull(chrom) -> clustered_chr
    x <- as.tibble(permutations) %>%  filter(V1 >= sampled_max_1) %>% nrow()
    pvalue <- (x+1)/(n_permutations+1)
    tmp <- tibble(mds_coord = as.character(mds_chosen),direction = as.character("neg"),clust_pvalue = as.numeric(pvalue), outliers=as.numeric(nrow(neg_windows)),
                  n1_outliers=as.numeric(sampled_max_1), high_cutoff = as.numeric(-mds_high_cutoff),lower_cutoff=as.numeric(-mds_low_cutoff),
                  chr=as.character(clustered_chr))
    mds_clustering <- rbind(mds_clustering, tmp)
  }else{
    tmp <- tibble(mds_coord = as.character(mds_chosen),direction = as.character("neg"),clust_pvalue = as.numeric(NA), outliers=as.numeric(nrow(neg_windows)),
                  n1_outliers=as.numeric(NA), high_cutoff = as.numeric(NA),lower_cutoff=as.numeric(NA),
                  chr=as.numeric(NA))
    mds_clustering <- rbind(mds_clustering, tmp)
  }
}

str(mds_clustering)
write.csv(mds_clustering,"mds_clustering.csv",row.names = FALSE)

mds_clustering %>% filter(clust_pvalue < 0.01) -> sig_mds_clusters

str(sig_mds_clusters)
write.csv(sig_mds_clusters,"sig_mds_clusters.csv",row.names = FALSE)

# Generate datasets of outlier windows and genotypes
outlier_windows <- tibble(chrom=character(), start=numeric(), end=numeric(), mid=numeric(),
                          the_mds=numeric(), mds_coord=character(), outlier=character(),
                          n=numeric())

for (i in 1:nrow(sig_mds_clusters)){
  coord <- (sig_mds_clusters %>% pull(mds_coord))[i]
  direction <- (sig_mds_clusters %>% pull(direction))[i]
  high_cutoff <- (sig_mds_clusters %>% pull(high_cutoff))[i]
  low_cutoff <- (sig_mds_clusters %>% pull(lower_cutoff))[i]
  cluster_chr <- (sig_mds_clusters %>% pull(chr))[i]
  coord_direction <- paste(coord, "-", direction, sep="")
  
  print(paste("Testing",coord_direction))
  
  if (direction == "pos"){
    current_windows <- win.regions %>%
      mutate_(the_mds=coord ) %>% 
      mutate(outlier=case_when((the_mds > high_cutoff) & (chrom == cluster_chr) ~ "Outlier", 
                               TRUE ~ "Non-outlier")) %>%
      filter(outlier != "Non-outlier") %>%
      select(chrom,start,end,mid,the_mds,outlier,n) %>%
      mutate(mds_coord=coord_direction) %>%
      mutate(ahead_n=n-lag(n), behind_n=abs(n-lead(n))) %>%  #计算相邻两个outlier window的n 之间的距离，即当前window与前后相邻一个outlier window之间距离多个少window (每个window 长为 window size = 100,本例)
      mutate(min_dist=pmin(ahead_n, behind_n, na.rm=T)) %>%  #从前后相邻两个outlier window 中找出彼此距离最少的一个window数目，代表了彼此outlier window 间的距离
      filter(min_dist < max_distance_between_outliers) %>%   #从中选出outlier window 间的距离少于 max_distance_between_outliers的outlier window
      select(-ahead_n,-behind_n,-min_dist)
    windows <- current_windows %>% pull(n) #n代表第几个window，所以windows就是这些具体window的排列次序
    outlier_windows <- rbind(outlier_windows, current_windows)
  }else{
    current_windows <- win.regions %>%
      mutate_(the_mds=coord) %>% 
      mutate(outlier=case_when((the_mds < high_cutoff) & (chrom == cluster_chr) ~ "Outlier", 
                               TRUE ~ "Non-outlier")) %>%
      filter(outlier != "Non-outlier") %>%
      select(chrom,start,end,mid,the_mds,outlier,n) %>%
      mutate(mds_coord=coord_direction) %>%
      mutate(ahead_n=n-lag(n), behind_n=abs(n-lead(n))) %>%
      mutate(min_dist=pmin(ahead_n, behind_n, na.rm=T)) %>%
      filter(min_dist < max_distance_between_outliers) %>%
      select(-ahead_n,-behind_n,-min_dist)
    windows <- current_windows %>% pull(n) #n代表第几个window，所以windows就是这些具体window的排列次序
    outlier_windows <- rbind(outlier_windows, current_windows)
  }
}

str(outlier_windows)
write.csv(outlier_windows,file = "outlier_windows.csv", row.names = FALSE)

head(outlier_windows)
unique(outlier_windows$mds_coord)
nrow(outlier_windows)
#需要注意的是并不是每一个sig_mds_clusters中的mds_coord 和 direction 都有对应的outlier window
#因此，我们删除sig_mds_clusters中没有outlier window 的行！！！
#sig_mds_clusters$mds_coord1 <- paste(sig_mds_clusters$mds_coord,sig_mds_clusters$direction,sep = "-")
#delete_mds_coord <- setdiff(sig_mds_clusters$mds_coord1,outlier_windows$mds_coord) #找出outlier_windows与sig_mds_clusters数据集中不一致的mds_coord
#delete_mds_coord

nrow(sig_mds_clusters)

#for (m in 1:length(delete_mds_coord)) {
#  sig_mds_clusters <- sig_mds_clusters %>%
#    filter(mds_coord1 != delete_mds_coord[m])
#}


#nrow(sig_mds_clusters)
#head(sig_mds_clusters)
#sig_mds_clusters <- sig_mds_clusters[,-ncol(sig_mds_clusters)] #删除最后一列

cluster_genotypes <- tibble(mds_coord=character(), name=character(), PC1=numeric(), PC2=numeric(), genotype=character())
#do not to change code in loop
for (i in 1:nrow(sig_mds_clusters)){
  #coord <- sig_mds_clusters[i,1]
  #direction <- sig_mds_clusters[i,2]
  #high_cutoff <- sig_mds_clusters[i,6]
  #low_cutoff <- sig_mds_clusters[i,7]
  #cluster_chr <- sig_mds_clusters[i,8]
  coord <- (sig_mds_clusters %>% pull(mds_coord))[i]
  direction <- (sig_mds_clusters %>% pull(direction))[i]
  high_cutoff <- (sig_mds_clusters %>% pull(high_cutoff))[i]
  low_cutoff <- (sig_mds_clusters %>% pull(lower_cutoff))[i]
  cluster_chr <- (sig_mds_clusters %>% pull(chr))[i]
  coord_direction <- paste(coord, "-", direction, sep="")
  print(paste("Testing",coord_direction))

  if (direction == "pos"){
    current_windows <- win.regions %>%
      mutate_(the_mds=coord ) %>%
      mutate(outlier=case_when((the_mds > high_cutoff) & (chrom == cluster_chr) ~ "Outlier",
                               TRUE ~ "Non-outlier")) %>%
      filter(outlier != "Non-outlier") %>%
      select(chrom,start,end,mid,the_mds,outlier,n) %>%
      mutate(mds_coord=coord_direction) %>%
      mutate(ahead_n=n-lag(n), behind_n=abs(n-lead(n))) %>%
      mutate(min_dist=pmin(ahead_n, behind_n, na.rm=T)) %>%
      filter(min_dist < max_distance_between_outliers) %>%
      select(-ahead_n,-behind_n,-min_dist)
    windows <- current_windows %>% pull(n)
    outlier_windows <- rbind(outlier_windows, current_windows)
  }else{
    current_windows <- win.regions %>%
      mutate_(the_mds=coord) %>%
      mutate(outlier=case_when((the_mds < high_cutoff) & (chrom == cluster_chr) ~ "Outlier",
                               TRUE ~ "Non-outlier")) %>%
      filter(outlier != "Non-outlier") %>%
      select(chrom,start,end,mid,the_mds,outlier,n) %>%
      mutate(mds_coord=coord_direction) %>%
      mutate(ahead_n=n-lag(n), behind_n=abs(n-lead(n))) %>%
      mutate(min_dist=pmin(ahead_n, behind_n, na.rm=T)) %>%
      filter(min_dist < max_distance_between_outliers) %>%
      select(-ahead_n,-behind_n,-min_dist)
    windows <- current_windows %>% pull(n)
    outlier_windows <- rbind(outlier_windows, current_windows)
  }

  out <- cov_pca(win.fn.snp(windows), k=2)
  #write.csv(out,"out.csv",row.names = FALSE)
  #out <- read.csv("out.csv")
  #must convert out to numeric format
  #out <- as.numeric(out$x)
  #sometimes the windows$n is successive,like 2,3,4,5,6,7....  in this case out <- cov_pca(win.fn.snp(windows),k=2) will occur error.
  #Error in value[[3L]](cond) : Error. Is bcftools installed?
  #we need to select some portion of windows to do cov_pca() test
  #每隔20个数字抽出数据
  #total_num <- length(windows)
  #k <- 1
  #window_select <-c()
  #while (k < total_num) {
  #       k <- k + 20
  #}
  #out <- cov_pca(win.fn.snp(window_select),k=2)
  matrix.out <- t(matrix(out[4:length(out)], ncol=nrow(samples), byrow=T))
  out <- as_tibble(cbind(samples, matrix.out)) %>%
    rename(name=V1, PC1="1", PC2="2") %>%
    mutate(PC1=as.double(PC1), PC2=as.double(PC2))
  try_3_clusters <-try(kmeans(matrix.out[,1], 3, centers=c(min(matrix.out[,1]), (min(matrix.out[,1])+max(matrix.out[,1]))/2, max(matrix.out[,1]))))
  if("try-error" %in% class(try_3_clusters)){
    kmeans_cluster <-kmeans(matrix.out[,1], 2, centers=c(min(matrix.out[,1]), max(matrix.out[,1])))
  }else{
    kmeans_cluster <- kmeans(matrix.out[,1], 3, centers=c(min(matrix.out[,1]), (min(matrix.out[,1])+max(matrix.out[,1]))/2, max(matrix.out[,1])))
  }
  out$cluster <- kmeans_cluster$cluster - 1
  out$cluster <- as.character(out$cluster)
  out$mds_coord <- paste(coord, direction, sep="-")
  genotype.out <- out %>% select(mds_coord,name,PC1,PC2,cluster) %>% rename(genotype=cluster)
  cluster_genotypes <- rbind(cluster_genotypes, genotype.out)
}

write.csv(cluster_genotypes,file = "cluster_genotypes.csv", row.names = FALSE)

# Counting
mds_counts <- tibble(mds_coord=character(), n_outliers=numeric())
for (mds in unique(outlier_windows$mds_coord)){
  count_outliers <- outlier_windows %>%
    filter(mds_coord == mds) %>% nrow()
  tmp_tibble <- tibble(mds_coord=as.character(mds), n_outliers=as.numeric(count_outliers))
  mds_counts <- rbind(mds_counts, tmp_tibble)
}

str(mds_counts)
write.csv(mds_counts,file = "mds_counts.csv",row.names = FALSE)

# Collapsing correlated MDS
correlated_mds <- tibble(mds1=character(), mds2=character(), correlation=numeric())
total_mds_coords <- unique(outlier_windows$mds_coord)
total_mds_coords

for (i in 1:(length(total_mds_coords)-1)){
  for (j in (i+1):length(total_mds_coords)){
    mds1 <- total_mds_coords[i]
    mds2 <- total_mds_coords[j]
    chr1 <- outlier_windows %>% filter(mds_coord == mds1) %>% select(chrom) %>% unique() %>% pull()
    chr2 <- outlier_windows %>% filter(mds_coord == mds2) %>% select(chrom) %>% unique() %>% pull()
    if (chr1 != chr2){next;}
    cluster_genotypes %>% mutate(mds_coord=gsub("_", "-", mds_coord)) %>% filter(mds_coord == mds1 | mds_coord == mds2) %>%
      select(-PC1,-PC2) %>%
      spread(mds_coord, genotype) %>% select(-name) -> tmp
    x <- tmp %>% pull(1) %>% as.numeric()
    y <- tmp %>% pull(2) %>% as.numeric()
    test_result <- cor.test(x, y, na.rm=T)
    tmp_tibble <- tibble(mds1=as.character(mds1), mds2=as.character(mds2), correlation=as.numeric(abs(test_result$estimate)))
    correlated_mds <- rbind(correlated_mds, tmp_tibble)
  }
}
str(correlated_mds)
write.csv(correlated_mds,file = "correlated_mds.csv",row.names = FALSE)


for (i in 1:nrow(correlated_mds)){
  if (correlated_mds[i,3] >= min_cor){
    count1 <- mds_counts %>% filter(mds_coord == as.character(correlated_mds[i,1])) %>% pull(n_outliers)
    count2 <- mds_counts %>% filter(mds_coord == as.character(correlated_mds[i,2])) %>% pull(n_outliers)
    if (count1 < count2){
      total_mds_coords[which(total_mds_coords != as.character(correlated_mds[i,1]))] -> total_mds_coords
    }else{
      total_mds_coords[which(total_mds_coords != as.character(correlated_mds[i,2]))] -> total_mds_coords
    }
  }
}

total_mds_coords
str(total_mds_coords)
# Plotting output information
cluster_genotypes <- tibble(mds_coord=character(), name=character(),
                            PC1=numeric(), genotype=character())
mds_info <- tibble(mds_coord=character(), mds=character(), chromosome=character(),
                   start=numeric(), end=numeric(), n_outliers=numeric(),
                   PC1_perc=numeric(), PC2_perc=numeric(),
                   betweenSS_perc=numeric())

win.regions$contig <- win.regions$chrom
win.regions$contig <- as.character(win.regions$contig)

for (i in 1:nrow(sig_mds_clusters)){
  coord <- (sig_mds_clusters %>% pull(mds_coord))[i]
  direction <- (sig_mds_clusters %>% pull(direction))[i]
  if(! paste(coord,"-", direction, sep="") %in% total_mds_coords){
    next;
  }
  high_cutoff <- (sig_mds_clusters %>% pull(high_cutoff))[i]
  low_cutoff <- (sig_mds_clusters %>% pull(lower_cutoff))[i]
  cluster_chr <- (sig_mds_clusters %>% pull(chr))[i]
  coord_direction <- paste(coord, "-", direction, sep="")

  if (direction == "pos"){
    current_windows <- win.regions %>%
      mutate_(the_mds=coord ) %>%
      mutate(outlier=case_when((the_mds > high_cutoff) & (chrom == cluster_chr) ~ "Outlier",
                               TRUE ~ "Non-outlier")) %>%
      filter(outlier != "Non-outlier") %>%
      select(chrom,start,end,mid,the_mds,outlier,n) %>%
      mutate(mds_coord=coord_direction) %>%
      mutate(ahead_n=n-lag(n), behind_n=abs(n-lead(n))) %>%
      mutate(min_dist=pmin(ahead_n, behind_n, na.rm=T)) %>%
      filter(min_dist < max_distance_between_outliers ) %>%
      select(-ahead_n,-behind_n,-min_dist)
    windows <- current_windows %>% pull(n)
  }else{
    current_windows <- win.regions %>%
      mutate_(the_mds=coord) %>%
      mutate(outlier=case_when((the_mds < high_cutoff) & (chrom == cluster_chr) ~ "Outlier",
                               TRUE ~ "Non-outlier")) %>%
      filter(outlier != "Non-outlier") %>%
      select(chrom,start,end,mid,the_mds,outlier,n) %>%
      mutate(mds_coord=coord_direction) %>%
      mutate(ahead_n=n-lag(n), behind_n=abs(n-lead(n))) %>%
      mutate(min_dist=pmin(ahead_n, behind_n, na.rm=T)) %>%
      filter(min_dist < max_distance_between_outliers) %>%
      select(-ahead_n,-behind_n,-min_dist)
    windows <- current_windows %>% pull(n)
  }
  chromosome <- current_windows %>% head(1) %>% pull(chrom)
  start <- current_windows %>% summarize(s=min(start)) %>% pull()
  end <- current_windows %>% summarize(e=max(end)) %>% pull()
  write.csv(current_windows,file = paste(cluster_chr,"_",coord_direction,"_current_windows.csv", sep=""),row.names = FALSE)

  genome_plot <- win.regions %>% mutate_(the_mds=coord) %>%
    mutate(chrom_=substring(contig, nchar(contig)-7+1, nchar(contig)-2)) %>% #change chromosome name,so change this command based on your project
    mutate(outlier=case_when(n %in% current_windows$n ~ "Outlier",
                             TRUE ~ "Non-outlier")) %>%
    ggplot(., aes(x=mid/1000000, y=the_mds, color=outlier)) + geom_point() + theme_bw() +
    facet_wrap(~chrom_, scales="free_x", nrow=1) +
    scale_color_manual(values=c("grey40","#E41A1C")) +
    xlab("Mbp") + ylab(toupper(coord)) +
    theme(legend.title=element_blank())
  
  
  pdf(paste(cluster_chr,"_",coord_direction,"_all_chr_outlier.pdf",sep=""), height=8, width=14)
  print(genome_plot)
  dev.off()

  out <- cov_pca(win.fn.snp(windows), k=2)
  PC1_perc <- out[2]/out[1]
  PC2_perc <- out[3]/out[1]
  matrix.out <- t(matrix(out[4:length(out)], ncol=nrow(samples), byrow=T))
  out <- as_tibble(cbind(samples, matrix.out)) %>%
    rename(name=V1, PC1="1", PC2="2") %>%
    mutate(PC1=as.double(PC1), PC2=as.double(PC2))
  try_3_clusters <-try(kmeans(matrix.out[,1], 3, centers=c(min(matrix.out[,1]), (min(matrix.out[,1])+max(matrix.out[,1]))/2, max(matrix.out[,1]))))
  if("try-error" %in% class(try_3_clusters)){
    kmeans_cluster <-kmeans(matrix.out[,1], 2, centers=c(min(matrix.out[,1]), max(matrix.out[,1])))
  }else{
    kmeans_cluster <- kmeans(matrix.out[,1], 3, centers=c(min(matrix.out[,1]), (min(matrix.out[,1])+max(matrix.out[,1]))/2, max(matrix.out[,1])))
  }
  out$cluster <- kmeans_cluster$cluster - 1
  out$cluster <- as.character(out$cluster)
  out$mds_coord <- paste(coord, direction, sep="_")
  betweenSS_perc <- kmeans_cluster$betweenss / kmeans_cluster$totss

  pca_plot <- out %>%
    ggplot(., aes(x=PC1, y=PC2, col=cluster)) + geom_point() + theme_bw() +
    scale_color_manual(name="Cluster", values=c("red","purple","blue")) +
    xlab(paste("PC",1," (",round(100*PC1_perc,2),"% PVE)",sep="")) +
    ylab(paste("PC",2," (",round(100*PC2_perc,2),"% PVE)",sep="")) +
    theme(plot.margin = unit(c(0.3,0.3,0.3,0.3), "inches"))
  pdf(paste(cluster_chr,"_",coord_direction,"_pca.pdf",sep=""), height=6, width=8)
  print(pca_plot)
  dev.off()

  win.fn.snp(windows) %>% as.tibble() -> snps
  colnames(snps) <- pull(samples)
  snps %>% gather("name","genotype",1:ncol(snps)) %>% group_by(name, genotype) %>%
    summarize(count=n()) %>%
    spread(genotype, count) %>%
    summarize(het=`1`/(`0` + `1` + `2`)) -> heterozygosity
  het_plot <- inner_join(out, heterozygosity) %>% 
    ggplot(., aes(x=as.character(cluster), y=het, fill=as.character(cluster))) + geom_boxplot() + theme_bw() +
    scale_fill_manual(name="Cluster", values=c("red","purple","blue")) +
    xlab("Cluster") + ylab("Heterozygosity") +
    theme(plot.margin = unit(c(0.3,0.3,0.3,0.3), "inches"))
  pdf(paste(cluster_chr,"_",coord_direction,"_het.pdf",sep=""), height=6, width=8)
  print(het_plot)
  dev.off()

  # Output the information
  genotype.out <- out %>% select(mds_coord,name,PC1,cluster) %>% rename(genotype=cluster)
  cluster_genotypes <- rbind(cluster_genotypes, genotype.out)
  tmp_info <- tibble(mds_coord=as.character(coord_direction), mds=as.character(toupper(coord)), chromosome=as.character(chromosome),
                     start=as.numeric(start), end=as.numeric(end), n_outliers=as.numeric(length(windows)),
                     PC1_perc=as.numeric(round(PC1_perc*100,2)), PC2_perc=as.numeric(round(PC2_perc*100,2)),
                     betweenSS_perc=as.numeric(round(betweenSS_perc,4)))
  mds_info <- rbind(mds_info, tmp_info)
}

write.csv(cluster_genotypes,file = "cluster_genotypes_final_MDS.csv", row.names = FALSE)
write.csv(mds_info,file = "mds_info.csv",row.names = FALSE)
