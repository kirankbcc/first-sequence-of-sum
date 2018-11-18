#!/usr/bin/perl

##########################################
# FileName: firstSequenceOfSum.pl
# Description: Generate first Sequence Of a given Sum value
#
# CreatedBy: Kiran Babu Chinnam on 19-11-2018
# ModifiedBy: Kiran Babu Chinnam on 19-11-2018
##########################################

use strict;
use warnings;

my @A = (1,3,4,2,6,7,4);
my $NUM = 19;
my $SUM = 0;
my @SEQ;
my $indx = 0;
my $out;

print "\n***result start***\n";
print "\nArray: ",join " ",@A,"\n";
print "Sum: $NUM\n";

foreach my $val(@A)
{
	push (@SEQ,$val);
	$SUM += $val;
	$indx++;
	while($SUM > $NUM){  $SUM -= shift @SEQ;  }
	next if($SUM < $NUM);
	$out = (join '-', @SEQ)."\nends at element $val and index $indx\n"; last;
}

if($SUM == $NUM)
{  
	print "\nSequence for the SUM is:\n$out";
}else{ 
	print "\nNo Sequence found\n\n";
}

print "\n***result end***\n";
