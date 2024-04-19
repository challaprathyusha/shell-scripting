date=$(date)
echo "$date"
touch /home/ec2-user/shell-scripting/datefile.txt
$date >> datefile.txt

for i in $date
do
cat datefile.txt
done