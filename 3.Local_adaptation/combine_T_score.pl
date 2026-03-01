#!/usr/bin/perl -w
use strict;

my $file1 = shift;
my $file2 = shift;
my $file3 = shift;

my $fst_pops1 = shift; #pops in file1
my $fst_pops2 = shift; #pops in file2
my $fst_pops3 = shift; #pops in file3

my $out = shift;

my @array1;
my @array2;
my @array3;

my %hash1;
my %hash2;
my %hash3;

open OUT,">$out" or die $!;
print OUT "Chr\tStart\tEnd\tN_snp1\tT_$fst_pops1\tN_snp2\tT_$fst_pops2\tN_snp3\tT_$fst_pops3\n";

open AA,"$file1" or die $!;

readline AA;

while(<AA>){
	chomp;
	my @aa = split;
	my $window1 = $aa[2]."_".$aa[3]."_".$aa[4];
	push @array1,$window1;
	my @aa1 = @aa[2,3,4,6,7];
	$hash1{$window1} = join("\t",@aa1);
}
close AA;

open BB,"$file2" or die $!;
readline BB;

while(<BB>){
	chomp;
	my @bb = split;
	my $window2 = $bb[2]."_".$bb[3]."_".$bb[4];
	push @array2,$window2;
	my @bb1 = @bb[6,7];
	$hash2{$window2} = join("\t",@bb1);
}
close BB;

open CC,"$file3" or die $!;
readline CC;
while(<CC>){
	chomp;
	my @cc = split;
	my $window3 = $cc[2]."_".$cc[3]."_".$cc[4];
	push @array3,$window3;
	my @cc1 = @cc[6,7];
	$hash3{$window3} = join("\t",@cc1);
}
close CC;

my @intersection1 = grep { $_ ~~ @array2 } @array1;
my @intersection2 = grep { $_ ~~ @array3 } @intersection1;

foreach my $window (@intersection2){
        print OUT "$hash1{$window}\t$hash2{$window}\t$hash3{$window}\n";
}
close OUT;
