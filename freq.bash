#!/bin/bash
				
cat $1 | grep "Frequencies -- " | awk -F" " '{print $3 "\n" $4 "\n" $5 }' > tmp
cat $1 | grep "IR Inten " | awk -F" " '{print $4 "\n" $5 "\n" $6 }' > tmp2
				
paste tmp tmp2 | column -s $'\t' -t
				
rm tmp tmp2
