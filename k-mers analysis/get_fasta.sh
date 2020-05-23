#!/bin/bash
cat genomes.txt | while read line 
do
	echo $line
    	fastq-dump -W -N 10000 -X 11000  --skip-technical -fasta $line
done
