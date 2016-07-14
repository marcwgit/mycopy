#!/bin/bash
# read -p "userinp :" userinp
# echo "userinp: $userinp"
read -p "from :" from
echo "from: $from"
read -p "to :" to
echo "to: $to"
ls $from > mwfilelist
for i in `cat mwfilelist`; do
echo "$i"
perl -e 'print "hello\n";'
done
for i in "$from"; do
echo $"i"
perl -e 'print "hello";'
done
LIST="$(ls *.txt)"
echo $LIST
for i in "$LIST"; do
perl -e 'print "hello";'
done
for i in `ls *.txt`
do
	echo "$i"
done
script =$('print "the end";')

perl -e "$script"
