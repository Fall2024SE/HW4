grep -l "sample" ../dataset1/* | while read file; do
  count=$(grep -c "CSC510" "$file" | grep -o "[^:]*$") 
  if [ "$count" -ge 3 ]; then  
    size=$(stat %s "$file")
    echo "$count $size $file"
  fi
done | sort -rn -k1,1 -k2,2n | while read count size file; do
  echo "$file:$count"
done