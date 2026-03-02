#!/usr/bin/perl -w
use strict;

my $inputdir = shift;
my $chr_name = shift;
my $chr_size = shift;#25,000,000 bp , the unit is bp
my $block_size = shift;#1,000,000 bp,the unit is bp
my $out = shift;

open OUT,">$out" or die $!;
print OUT "chr\twin2\twin1\tmax_2_r2\n";

my %hash;
my @array;

for(my $i=0;$i<=$chr_size;$i=$i+$block_size){
	for(my $j=$i+$block_size;$j<=$chr_size;$j=$j+$block_size){
		open IN,"$inputdir/win_$i\_win_$j.txt" or die $!;
		while(<IN>){
			chomp;
			my $win1 = $i;
			my $win2 = $j;
			my $window = $win1."_".$win2;
			$hash{$window} = $_;
		}
		close IN;
	}
}

for(my $i=0;$i<=$chr_size;$i=$i+$block_size){
	for(my $j=$i+$block_size;$j<=$chr_size;$j=$j+$block_size){
		my $window1 = $i;
		my $window2 = $j;
		my $block = $window1."_".$window2;
		print OUT "$chr_name\t$window2\t$window1\t$hash{$block}\n";
	}
}

close OUT;
