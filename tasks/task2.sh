#!/bin/bash

grep -l "sample" ../dataset1/* | while read file; do       # Find all files with word "sample" in them
  count=$(grep -c "CSC510" "$file" | grep -o "[^:]*$")     # Extract counts of the occurances of word CSC510 and filter out file name from it
  if [ "$count" -ge 3 ]; then  
    size=$(stat -c %s "$file")                   
    echo "$count $size $file"                              # Output the stream of occurance count, file size and file name
  fi
done | sort -rn -k1,1 -k2,2 | while read count size file; do      # Sort based on occurance first then on file size in descending order
  echo "$file"
done