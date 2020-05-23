#!/bin/bash
cat genomes.txt | while read line 
do
	fasta_file="${line}.fasta"
	fa_file="${line}.fa"
	echo $line
    	jellyfish count -L 2 -m 31 -s 100M -t 4 -C $fasta_file
	jellyfish dump mer_counts.jf > $fa_file
done
