#Author:QiFu,20240514
#Note:this script is used to search candidate genes
#!/usr/bin/perl -w
use strict;

my $gene = shift;
my $snps = shift;
my $out = shift;


open AA,"$snps" or die $!;
open OUT, ">$out" or die $!;

my $st = <AA>;
chomp ($st);
print OUT "$st\t";
print OUT "gene\tstart\tend\tgene\n";
close AA;

open IN,"$gene" or die $!;

while(<IN>){
	chomp;
	my @kk = split;

	open BB,"$snps" or die $!;
	while(<BB>){
		chomp;
		my @aa = split;
		if($kk[0] == $aa[0]){
			if(($aa[1]>=$kk[1]) && ($aa[1]<=$kk[2])){
				push @aa,@kk;
				print OUT join("\t",@aa),"\n";
			}
		}
		else{
			next;
		}
	}
	close BB;
}
close IN;
close OUT;
