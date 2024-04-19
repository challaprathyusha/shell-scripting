#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0|cut -d "." f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $USERID -ne 0 ]
then 
    echo "you dont have super user previlages to run the command"
    exit 12
fi

validate(){

  if [ $1 -ne 0 ] 
  then
    echo -e "$2 installation....$R FAILURE $N"
    exit 1
  else
    echo -e  "$2 installation.....$G SUCCESS $N"
  fi  
}


dnf install git -y &>>$LOG_FILE
validate $? git

dnf install mysqlh -y &>>$LOG_FILE
validate $? mysql


