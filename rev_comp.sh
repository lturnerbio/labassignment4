#! /bin/sh

#single line help message in no argument given
if [ $# -lt 1 ] || [ $# -gt 1 ]; then
echo "arguments received"
fi

#initialize variable
reverse=""

#read in data
name=`grep ">" $1`
sequence=`grep -v ">" $1`

echo "Name: $name"

#calculate length of sequence
len=${#sequence}

echo "Length: $len"


echo "$sequence
$reverse
"

#complement sequence
#rev complement added -LFT
rc=`echo $reverse | tr '[:lower:]' '[upper]' | rev`

echo "$rc
"

#now redirects to FASTA file
echo $name >$1.rc.txt
echo $rc >>$1.rc.fa
