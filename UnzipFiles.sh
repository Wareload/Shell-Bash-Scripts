#!/bin/bash
files=*.zip
for f in $files
do 
dir=${f%.*}
if [ -d $dir ] 
then
echo "Skipped: Directory $dir already exists."
else
mkdir $dir
unzip "$f" -d $dir > /dev/null
echo "Directory $dir created and file unziped."
fi
done
