date =$(date --date)
echo "$date"
touch /home/ec2-user/shell-scripting/datefile.txt
$date --file=datefile.txt
cat datefile.txt