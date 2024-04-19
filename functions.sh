#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "you dont have super user previlages to run the command"
    exit 12
fi

validate(){

  if [ $1 -ne 0]
  then
    echo "$2 installation....FAILURE"
  else
    echo "$2 installation.....SUCCESS"
  fi  
}

dnf install mysql -y
validate $? mysql



dnf install git -y
validate $? git


