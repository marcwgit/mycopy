#!/usr/bin/perl

use strict;
use warnings;

my $str = "name1.name2.html";
# @fields = split(/:([^:]+)$/, $str);
@fields = split(/\.([^\.]+)$/, $str);
print "Field values are: @fields\n";

my $str="1:2:3:4:5";
$i=rindex($str,":");
$a=substr($str,0,$i);
$b=substr($str,$i+1);
print "\$a:$a, \$b: $b\n";
