#!/usr/bin/perl -w
use strict;

my $inputdir = shift;

opendir DIR,$inputdir or die "error when open $inputdir\n";

my %hash;

while(my $subdirname=readdir(DIR)){
	if ($subdirname =~ /block_([\d]+)bp_pos.txt$/){
		my $win = $1;
		my $out = "win_".$win."_bp.txt";
		open OUT,">$out" or die $!;
		open IN,"$inputdir/$subdirname" or die $!;
		my $start;
		my $end;
		while(<IN>){
			chomp;
			if ($. == 1){
				$start = $_;
				next;
			}
			else{
				$end = $_;
			}
		}
		close IN;
		print OUT "$win\t$start\t$end\n";
		close OUT;
	}
}
