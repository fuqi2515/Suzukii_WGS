#!/bin/bash
#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q normal
#SBATCH -J LD
#SBATCH -c 1
#SBATCH -o LD.%j.log
#SBATCH --mem 4G

## user's own commands below

dir=/01.data

pop=/02.popinfo

date

#step1: perform LD decay analysis
for K in {pop_Brazil,pop_China,pop_eastUS,pop_Hawaii,pop_Ireland,pop_Italy,pop_Japan,pop_korea,pop_westUS}
do
	echo K=$K;
	/PopLDdecay-3.42/bin/PopLDdecay -InVCF $dir/ALT_filter_suzukii_389_keep_18contigs_remove_mask_region_INDEL_variants_HQ.vcf.gz -MaxDist 100 -OutStat $K.stat.gz -SubPop $pop/$K.list
done

#step2: generate R script
perl /PopLDdecay-3.42/bin/Plot_MultiPop.pl -inList multi_9pops.list -keepR -output suzukii_9pops

#step3: plot LDdecay

pdf("suzukii_LDdecay.pdf")

read.table("suzukii_9pops.JP")->EJP;
plot(EJP[,1]/1000,EJP[,2],type="l",col="#B26314",main="LD decay",xlab="Distance(Kb)",xlim=c(0,5),ylim=c(0,1),ylab=expression(r^{2}),bty="n",lwd=2)
read.table("suzukii_9pops.HW")->EHW;
lines(EHW[,1]/1000,EHW[,2],col="#4daf4a",lwd=2)
read.table("suzukii_9pops.IT")->EIT;
lines(EIT[,1]/1000,EIT[,2],col="#BFF217",lwd=2)
read.table("suzukii_9pops.BZ")->EBZ;
lines(EBZ[,1]/1000,EBZ[,2],col="#222222",lwd=2)
read.table("suzukii_9pops.IR")->EIR;
lines(EIR[,1]/1000,EIR[,2],col="#FFA6B2",lwd=2)
read.table("suzukii_9pops.SK")->ESK;
lines(ESK[,1]/1000,ESK[,2],col="#A945FF",lwd=2)
read.table("suzukii_9pops.WUS")->EWUS;
lines(EWUS[,1]/1000,EWUS[,2],col="#60D5FD",lwd=2)
read.table("suzukii_9pops.EUS")->EEUS;
lines(EEUS[,1]/1000,EEUS[,2],col="#FF9326",lwd=2)
read.table("suzukii_9pops.CN")->ECN;
lines(ECN[,1]/1000,ECN[,2],col="#DF0101",lwd=2)

legend("topright",c("BZ","CN","EUS","HW","IR","IT","JP","SK","WUS"),
       col=c("#222222","#DF0101","#FF9326","#4daf4a","#FFA6B2","#BFF217","#B26314","#A945FF","#60D5FD"),
       cex=1,lty=c(1,1,1,1,1,1,1,1,1),bty="n",lwd=2);
dev.off()

date
