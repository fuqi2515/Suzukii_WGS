#!/usr/bin/perl -w
use strict;

my $in = shift;
my $pops = shift;

open AA,"$pops" or die $!;

my @array;
while(<AA>){
	chomp;
	push @array,$_;
}

close AA;

my $num = 0;

foreach my $pop (@array){
	$num++;
	for (my $i=$num;$i<=$#array;$i++){
		my $pop1 = $pop;
		my $pop2 = $array[$i];
		my $output = "$pop1"."_"."$pop2"."_fst.txt";
		open OUT, ">$output" or die $!;
		open IN,"$in" or die $!;
		my $st = <IN>;
		print OUT "$st";
		while(<IN>){
			chomp;
			my @info = split;
			if((($info[0] eq $pop1) && ($info[1] eq $pop2)) || (($info[0] eq $pop2) && ($info[1] eq $pop1))){
				print OUT join("\t",@info),"\n";
			}
		}
		close IN;
		close OUT;
	}
}

