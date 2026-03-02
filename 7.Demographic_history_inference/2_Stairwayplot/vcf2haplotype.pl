#!/usr/bin/perl -w
use strict;
use Data::Dumper qw(Dumper);

my $vcf = shift;
open AA,"gzip -dc $vcf |" or die $!;
open BB,"gzip -dc $vcf |" or die $!;

my $output = shift;
open OUT,">$output" or die $!;

while(<AA>){
	chomp;
	if(/^##/){next;}
	if(/^#CHROM|POS/){
		my @sampleid = split;
		#my $POS = $sampleid[1];
		#splice @sampleid,1,2;
		#unshift @sampleid,$POS;
		splice @sampleid,2,1;
		splice @sampleid,3,5;
		print OUT join("\t",@sampleid),"\n";
		last;
	}
}
close AA;

while(<BB>){
	chomp;
	if(/^#/){next;}
	my @indiname = split;
	my @array;
	my $chr_name = $indiname[0];
	push @array,$chr_name;
	my $pos_name = $indiname[1];
	push @array,$pos_name;
	my $ref_name = $indiname[3];
	push @array,$ref_name;
	for(my $j=9;$j<=$#indiname;$j++){
		my @info = split /:/,$indiname[$j];
		my $allele;
		if($info[0] eq "0/0" or $info[0] eq "0|0"){$allele = $indiname[3];}
		if($info[0] eq "0/1" or $info[0] eq "0|1"){$allele = $indiname[3]."/".$indiname[4];}
		if($info[0] eq "1/0" or $info[0] eq "1|0"){$allele = $indiname[3]."/".$indiname[4];}
		if($info[0] eq "1/1" or $info[0] eq "1|1"){$allele = $indiname[4];}
		if($info[0] eq "./." or $info[0] eq ".|." or $info[0] eq "."){$allele = "-";}
		push @array,$allele;
	}
	print OUT join("\t",@array),"\n";
}
close BB;
close OUT;
