#!/usr/bin/perl -w
use strict;

my $vcf = shift;
my $out = shift;

if($vcf =~/gz$/){
        open AA,"gzip -dc $vcf|" or die $!;
}
else{
        open AA,"$vcf" or die $!;
}

open OUT, ">$out" or die $!;

while(<AA>){
	chomp;
	if(/#/){
		next;
	}
	else{
		my @info = split;
		print OUT "$info[0]\t$info[1]\n";
	}
}

close AA;
close OUT;
