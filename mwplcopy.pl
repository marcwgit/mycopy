#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);

my ($filesw, $addto) = @ARGV;
print Dumper \@ARGV;
my $filename = "copy.sh";
open (my $outfile, ">", $filename);


my @startname = split(/\*/,$filesw);
my @endname = split(/\*/,$addto);
print "start name values are: @startname\n";
print "first start name values are: $startname[0]\n";
print "last start name values are: $startname[1]\n";
print "end name values are: @endname\n";

#check existance of end direcrories  not needed
my @endDirs = split(/\//,$endname[0]);
print "end dirs: @endDirs\n";
print Dumper \@endDirs;
foreach my $endDirs (@endDirs) {
	my $i = 0;
#	if $endDirs[$i] !== ".." {
#	}	
}

#trim after last "/"
my $endDir = "";
my $i = rindex($endname[0],"/");
print "rindex ".$i."\n";
$endDir = substr($endname[0],0,$i+1);
print "endDir: ".$endDir."\n";

print $outfile "mkdir -p ".$endDir."\n";




#my $filesw = "*.txt";

#my @files = <*.txt>;



my @files = <"$filesw">;


print $filesw . "= filesw\n";
foreach my $file (@files) {
	print $file . "\n";
	
	#my $str = "name1.name2.html";
	# @fields = split(/:([^:]+)$/, $str);
	my @fields = split(/\.([^\.]+)$/, $file);
	print "Field values are: @fields\n";
	print "file name ".$file."\n";
	
	
	my @tmp = split("@startname[0]",$file);
	print "tmp [0] ".@tmp[0]."\n";
	print "tmp [1] ".@tmp[1]."\n";
	print "tmp values are: @tmp\n";
	
	my @middle = split("@startname[1]",$tmp[1]);
	#print "middle 0 ".@middle[0]."\n";
	#print "middle 1 ".@middle[1]."\n";
	print "middle values are: @middle\n";
	
	
	print $outfile "cp -v -n " . $file." " . $endname[0].$middle[0].$middle[1].$endname[1]."\n";
	
	
	#$str="1:2:3:4:5";
	my $i=rindex($file,".");
	print "rindex ".$i."\n";
	my $a=substr($file,0,$i);
	my $b=substr($file,$i+1);
	print "\$a:$a, \$b: $b\n";

}
close $outfile;
`cat copy.sh`;




