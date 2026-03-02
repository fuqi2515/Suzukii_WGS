#!/usr/bin/perl -w
use strict;

my $pos = shift;
my $chr_size = shift; #25,000,000 bp , the unit is bp
my $block_size = shift;#1,000,000 bp,the unit is bp

my $start = 0;
for(my $i=$start;$i<=$chr_size;$i=$i+$block_size){
	my $end = $start + $block_size;
	my $output = "block_"."$start"."bp_pos.txt";
	open OUT,">$output" or die $!;
	open IN,"$pos" or die $!;
	while(<IN>){
		chomp;
		my @aa = split;
		#my $num = $aa[1]/$block_size; #convert bp to kb
		if(($aa[1]>=$start) and ($aa[1]<$end)){
			print OUT "$aa[1]\n";
		}
		else{
			next;
		}
	}
	close IN;
	close OUT;
	$start = $start + $block_size;
}
