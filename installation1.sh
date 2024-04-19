#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[33m"
N="e[0m"

if [ $USERID -ne 0 ]
then 
    echo "you dont have super user previlages to run the command"
    exit 12
fi

validate(){

  if [ $1 -ne 0 ] 
  then
    echo -e "$2 installation....$R FAILURE $N"
  else
    echo -e  "$2 installation.....$G SUCCESS $N"
  fi  
}

dnf install mysql -y
validate $? mysql



dnf install git -y
validate $? git


