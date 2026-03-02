#Author:QiFu,20230101
#note:this script is used to random select one allele from haploype file
#!/usr/bin/perl -w
use strict;
use List::Util qw(shuffle);

my $in = shift;
my $out = shift;

open IN,"gunzip -dc $in|" or die $!;
open OUT,">$out" or die $!;

my $t=<IN>;
print OUT "$t";

while(<IN>){
	chomp;
	my @info = split;
	my @array;
	push @array,$info[0];
	push @array,$info[1];
	push @array,$info[2];
	for(my $i=3;$i<=$#info;$i++){
		my @b = split /\//,$info[$i];
		my $num = @b;
		if($num==1){
			push @array,$info[$i];
		}
		else{
			my @random = shuffle(@b);
			my $randome_select = $random[0];
			push @array, $randome_select;
		}
	}
	print OUT join("\t",@array),"\n";
}
close IN;
close OUT;
