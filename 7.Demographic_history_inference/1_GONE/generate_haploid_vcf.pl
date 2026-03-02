#Author:QiFu,20241202
#Note:this script is used to random select one allele from vcf and generate haploid vcf to used by GONE software
#!/usr/bin/perl -w
use strict;
use List::Util qw(shuffle);

my $vcf = shift;
my $out = shift;

open IN,"gzip -dc $vcf |" or die $!;
open OUT, "| bgzip >$out" or die $!;

my $t=<IN>;
print OUT "$t";

while(<IN>){
	chomp;
	my @info = split;
	my @array;
	push @array,$info[0];
	push @array,$info[1];
	push @array,$info[2];
	push @array,$info[3];
	push @array,$info[4];
	push @array,$info[5];
	push @array,$info[6];
	push @array,$info[7];
	push @array,$info[8];
	for(my $j=9;$j<=$#info;$j++){
		my @geno = split /:/,$info[$j];
		my $allele;
		if($geno[0] eq "0/0" or $geno[0] eq "0|0"){$allele = "0/0";}
		if($geno[0] eq "1/1" or $geno[0] eq "1|1"){$allele = "1/1";}
		if($geno[0] eq "./." or $geno[0] eq ".|." or $geno[0] eq "."){$allele = "./.";}
		if($geno[0] eq "0/1" or $geno[0] eq "0|1" or $geno[0] eq "1/0" or $geno[0] eq "1|0"){
			my @b = qw /0 1/;
			my @random = shuffle(@b);
			my $randome_select = $random[0];
			$allele = $randome_select."/".$randome_select;
		}
		push @array,$allele;
	}
	print OUT join("\t",@array),"\n";
}
close IN;
close OUT;
