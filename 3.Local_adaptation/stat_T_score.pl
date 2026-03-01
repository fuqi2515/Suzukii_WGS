#!/usr/bin/perl -w
use strict;

my $fst = shift;
my $out = shift;

open IN,"$fst" or die $!;
open OUT,">$out" or die $!;

print OUT "pop1\tpop2\tchromosome\twindow_pos_1\twindow_pos_2\tavg_wc_fst\tno_snps\tT\n";

readline IN;

while(<IN>){
	chomp;
	my @info = split;
	my $T = -log(1-$info[5]);
	push @info,$T;
	print OUT join("\t",@info),"\n";
}

close IN;
close OUT;
