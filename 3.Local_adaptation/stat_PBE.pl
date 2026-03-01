#!/usr/bin/perl -w
use strict;

my $file = shift;
my $col_num = shift; #Tbc column
my $out = shift;

open IN,"$file" or die $!;
open OUT,">$out" or die $!;

my @PBS;
my @Tbc;

readline IN;

while(<IN>){
	chomp;
	my @info = split;
	push @PBS,$info[9];
	push @Tbc,$info[$col_num];
}
close IN;

my @sorted_PBS = sort {$a <=> $b} @PBS;
my @sorted_Tbc = sort {$a <=> $b} @Tbc;

my $count = @sorted_PBS;
my $median_PBS;
if ($count % 2) {
    # 个数为奇数时，中位数为中间的元素
    $median_PBS = $sorted_PBS[int($count / 2)];
} else {
    # 个数为偶数时，中位数为中间两个元素的平均值
    $median_PBS = ($sorted_PBS[$count / 2 - 1] + $sorted_PBS[$count / 2]) / 2;
}

print "Median PBS is: $median_PBS\n";


my $median_Tbc;
if ($count % 2) {
    # 个数为奇数时，中位数为中间的元素
    $median_Tbc = $sorted_Tbc[int($count / 2)];
} else {
    # 个数为偶数时，中位数为中间两个元素的平均值
    $median_Tbc = ($sorted_Tbc[$count / 2 - 1] + $sorted_Tbc[$count / 2]) / 2;
}

print "Median Tbc is: $median_Tbc\n";
my $ratio = $median_PBS/$median_Tbc;
print "ration is: $ratio\n";

open AA,"$file" or die $!;

while(<AA>){
	chomp;
	my @aa = split;
	if($aa[0] eq "Chr"){
		my $str = "PBE";
		push @aa,$str;
		print OUT join("\t",@aa),"\n";
	}
	else{
		my $PBE_score = $aa[9]-($aa[$col_num]*($median_PBS/$median_Tbc));
		push @aa,$PBE_score;
		print OUT join("\t",@aa),"\n";
	}
}
close AA;
close OUT;
