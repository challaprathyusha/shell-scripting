#!/bin/bash
USERID=$(id -u)
if [ USERID -ne 0 ]
then 
    echo "you dont have super user previlages to run the command"
    exit 12
fi

validate(){

    echo "Exit status is:$1"
    echo "What are you doing?:$2"
}

dnf install mysql -y
validate $? installing mysql



dnf install git -y
validate $? installing git


