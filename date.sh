date=$(date)
echo "$date"
touch /home/ec2-user/shell-scripting/datefile.txt

for i in ${date}
do
$i >> datefile.txt
done