#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "run the command only with super user privilages"
    exit 1
else
    echo "you are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then    
    echo "installation of mysql is failed"
    exit 1
else
    echo "installation of mysql is success"
fi

dnf install git -y

if [ $? -ne 0 ]
then    
    echo "installation of git is failed"
    exit 1
else
    echo "installation of mysql is success"
fi
