FILE=file.txt

#grep -o 'I' $FILE|wc -l
#grep -o 'learn' $FILE|wc -l
#grep -o 'devops' $FILE|wc -l
#grep -o 'practice' $FILE|wc -l
#grep -o 'shell' $FILE|wc -l
#grep -o 'in' $FILE|wc -l
#grep -o 'linux' $FILE|wc -l

for i in $FILE
do 
    grep -o '$i' $FILE|wc -l
done