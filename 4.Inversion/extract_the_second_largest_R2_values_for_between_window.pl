#the $win1 position must locate before $win2 
#!/usr/bin/perl -w
use strict;

my $ld = shift;
my $win1 = shift;
my $win2 = shift;
my $out = shift;

open OUT,">$out" or die $!;
open AA,"$win1" or die $!;
open BB,"$win2" or die $!;

my $win1_start;
my $win1_end;
while(<AA>){
	chomp;
	my @aa = split;
	$win1_start = $aa[1];
	$win1_end = $aa[2];
}
close AA;

my $win2_start;
my $win2_end;
while(<BB>){
	chomp;
	my @bb = split;
	$win2_start = $bb[1];
	$win2_end = $bb[2];
}
close BB;

my @array;

if($ld =~ /gz/){
	open IN,"gunzip -dc $ld |" or die $!;
}
else{
	open IN,"$ld" or die $!;
}

readline IN;

while(<IN>){
	chomp;
	my @info = split;
	my $POS1 = $info[1];
	my $POS2 = $info[2];
	if((($POS1 >= $win1_start) and ($POS2 >= $win2_start)) and (($POS1 <= $win1_end) and ($POS2 <= $win2_end))){
		if($info[-1] =~ /nan/){
			next;
		}
		else{
			push @array,$info[-1];
		}
	}
}

my %hash;

my @unique = grep { !$hash{$_}++ } @array;

@unique = sort { $b <=> $a } @unique;

my $second_largest_R2 = $unique[1];

print OUT "$second_largest_R2\n";
