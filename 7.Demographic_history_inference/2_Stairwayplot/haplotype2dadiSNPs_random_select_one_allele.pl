#Author:QiFu,20230101
#Note: this script is used to generate dadi SNP file format for one allele
#!/usr/bin/perl -w
use strict;

my $hap = shift;
my $pop = shift;
my $head = shift;#the pop name used in dadi file
my $out = shift;

open IN,"$pop" or die $!;
my @array;

while(<IN>){
	chomp;
	push @array,$_;
}
close IN;

open AA,"gunzip -dc $hap|" or die $!;
my @index;
while(<AA>){
	chomp;
	if(/^#/){
		my @info = split;
		for(my $i=0;$i<=$#info;$i++){
			if(grep /^$info[$i]$/,@array){
				push @index,$i;
			}
		}
	}
	last;
}
close AA;

open OUT,">$out" or die $!;
print OUT "Ingroup\tOutgroup\tAllele1\t$head\tAllele2\t$head\tGene\tPosition\n";
open BB,"gunzip -dc $hap|grep -v \"^#\"|" or die $!;
while(<BB>){
	chomp;
	my @a = split;
	my @alleles;
	foreach my $j(@index){
		if($a[$j] eq "-"){
			next;
		}
		else{
			push @alleles,$a[$j];
		}
	}
	#remove site that missed across all samples in pop
	my $num_allele=@alleles;
	if($num_allele==0){
		next;
	}
	else{
		#remove constant site across all samples in pop
		my %ha;
		my @uniq_allele=grep{++$ha{$_}<2} @alleles;
		my $uniq_allele_num =@uniq_allele;
		if($uniq_allele_num==1){
			next;
		}
		else{
			my %hash;
			foreach my $ee (@alleles){
				$hash{$ee}++;
			}
			my @big = sort {$hash{$b} <=> $hash{$a}} keys %hash;
			my $major_allele = $big[0];
			my $minor_allele = $big[1];
			my $major_allele_num = $hash{$major_allele};
			my $minor_allele_num = $hash{$minor_allele};
			print OUT "-$major_allele-\t---\t$major_allele\t$major_allele_num\t$minor_allele\t$minor_allele_num\t$a[0]\t$a[1]\n";
		}
	}
}
close BB;
close OUT;
