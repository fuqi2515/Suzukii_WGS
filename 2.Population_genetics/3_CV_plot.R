#Author:QiFu

library(ggplot2)

#set the working directory
setwd("D:/02_structure/")

df <- read.table("cv.txt",header = T,sep = "\t")

str(df)

df$k <- as.numeric(as.vector(df$k))

#+++++++++++++++++++++++++
# Function to calculate the mean and the standard deviation
# for each group
#+++++++++++++++++++++++++
# data : a data frame
# varname : the name of a column containing the variable to be summariezed
# groupnames : vector of column names to be used as grouping variables

data_summary <- function(data, varname, groupnames){
  require(plyr)
  summary_func <- function(x, col){
    c(mean = mean(x[[col]], na.rm=TRUE),
      sd = sd(x[[col]], na.rm=TRUE))
  }
  data_sum<-ddply(data, groupnames, .fun=summary_func,
                  varname)
  data_sum <- rename(data_sum, c("mean" = varname))
  return(data_sum)
}

df2 <- data_summary(df,varname = "cv",
                    groupnames = c("supp","k"))
df2

pdf("CV.pdf",width = 5, height = 5)

ggplot(df2, aes(x=k, y=cv)) + 
  geom_point(size=2,color="black")+
  scale_x_continuous(breaks = seq(0,7,1))+
  labs(x="K",y="CV error")+
  theme_bw()+
  geom_errorbar(aes(ymin=cv-sd, ymax=cv+sd), width=.3,
                position=position_dodge(0.05),color="black")+
  #scale_y_continuous(breaks = seq(0.45,0.53,0.02),limits = c(0.45,0.53))+
  theme(axis.title = element_text(size = 15,face = "bold"))+ 
  theme(axis.text = element_text(size = 12,face = "bold"))
dev.off()
