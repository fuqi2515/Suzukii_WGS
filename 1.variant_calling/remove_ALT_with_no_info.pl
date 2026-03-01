#Author:QiFu,20230612
#!/usr/bin/perl -w
use strict;

my $vcf = shift;
my $out = shift;

if($vcf =~ /gz/){
        open IN,"gunzip -dc $vcf |" or die $!;
}
else{
        open IN,"$vcf" or die $!;
}

open OUT,"|bgzip > $out" or die $!;
#open OUT,">$out" or die $!;

while(<IN>){
	chomp;
	if(/#/){
		print OUT "$_\n";
	}
	else{
		my @info = split;
		if($info[4] =~ /\*/){
			next;
		}
		else{
			print OUT "$_\n";
		}
	}
}

close IN;
close OUT;
