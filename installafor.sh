#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0|cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[33m"
Y="\e[32m
N="\e[0m"

if [ $USERID -ne 0 ]
then 
    echo "you dont have super user previlages to run the command"
    exit 12
else
    echo"You are a super user"
fi

validate(){
  if [ $1 -ne 0 ] 
  then
    echo -e "$2 installation is....$R FAILURE $N"
    exit 1
  else
    echo -e  "$2 installation is.....$G SUCCESS $N"
  fi  
}

for i in $@
do
    echo "package to install:$i"
    dnf list installed $i &>>$LOG_FILE
    if [ $? -eq 0 ]
    then
        echo -e "$i is already installed.....$Y SKIPPING $N"
    else
        dnf install $i -y &>>$LOG_FILE
        validate $? $i
    fi
done



