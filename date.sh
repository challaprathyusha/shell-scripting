date =$(date --date=$i)
echo "$date"
touch datefile.txt
$date --file=datefile.txt
cat datefile.txt