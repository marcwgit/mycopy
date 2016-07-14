#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);

my ($filesw, $addto) = @ARGV;
print Dumper \@ARGV;

#my $filesw = "*.txt";

#my @files = <*.txt>;



my @files = <"$filesw">;


print $filesw . "= filesw\n";
foreach my $file (@files) {
	print $file . "\n";
}


my $str = "name1.name2.html";
# @fields = split(/:([^:]+)$/, $str);
my @fields = split(/\.([^\.]+)$/, $str);
print "Field values are: @fields\n";

$str="1:2:3:4:5";
my $i=rindex($str,":");
my $a=substr($str,0,$i);
my $b=substr($str,$i+1);
print "\$a:$a, \$b: $b\n";
