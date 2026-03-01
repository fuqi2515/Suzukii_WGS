#!/usr/bin/perl -w
use strict;

my $file = shift;
my $pop1 = shift;#collumn number focal population
my $pop2 = shift;#collumn number no-focal population
my $pop3 = shift;#collumn number no-focal population

my $out = shift;

open IN,"$file" or die $!;
open OUT,">$out" or die $!;

while(<IN>){
	chomp;
	my @aa = split;
	if($aa[0] eq "Chr"){
		my $str = "PBS";
		push @aa,$str;
		print OUT join("\t",@aa),"\n";
	}
	else{
		my $PBS = ($aa[$pop1]+$aa[$pop2]-$aa[$pop3])/2;
		push @aa,$PBS;
		print OUT join("\t",@aa),"\n";
	}
}
close IN;
close OUT;
