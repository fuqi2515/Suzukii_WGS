#Author:QiFu,20240530
#Note:this script is used to extract othologous genes between Dsuzukii and Dmelanogaster
#!/usr/bin/perl -w
use strict;

my $one2one_othologous = shift;
my $more2more_othologous = shift;
my $file = shift;
my $out = shift;

open IN,"$one2one_othologous" or die $!;
my %hash1;
my @array1;

while(<IN>){
	chomp;
	my @info = split;
	
	if(grep {$_ eq $info[0]} @array1){
		my $gene = $hash1{$info[0]}.",".$info[1];
		$hash1{$info[0]}= $gene;
	}
	else{
		push @array1,$info[0];
		$hash1{$info[0]}=$info[1];
	}
}
close IN;

open CC,"$more2more_othologous" or die $!;
my %hash2;
my @array2;

while(<CC>){
        chomp;
        my @bb = split;
        
        if(grep {$_ eq $bb[0]} @array2){
                my $gene2 = $hash2{$bb[0]}.",".$bb[1];
                $hash2{$bb[0]}= $gene2;
        }
        else{
                push @array2,$bb[0];
                $hash2{$bb[0]}=$bb[1];
        }
}
close CC;

open AA,"$file" or die $!;
open OUT,">$out" or die $!;

my $st = <AA>;
chomp ($st);
print OUT "$st\t";
print OUT "one_to_one_othologous\tmore_to_more_othologous\n";
while(<AA>){
	chomp;
	my @aa = split;
	my $one;
	my $two;
	if(!defined $hash1{$aa[-1]}){
		$one = "NA";
	}
	else{
		$one = $hash1{$aa[-1]};
	}
	if(!defined $hash2{$aa[-1]}){
		$two = "NA";
	}
	else{
		$two = $hash2{$aa[-1]};
	}
	push @aa,$one;
	push @aa,$two;
	print OUT join("\t",@aa),"\n";
}
close AA;
close OUT;
