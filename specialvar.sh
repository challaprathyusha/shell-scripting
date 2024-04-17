#!/bin/bash
echo "to print all variables:$@"
echo "to print no of var passed in script:$#"
echo "script name:$0"
echo "current working dir:$PWD"
echo "home dir of current user:$HOME"
echo "which user running the script:$USER"
echo "hostname:$HOSTNAME"
echo "PID of current running script:$$"
sleep 60 &
echo "PID of last background command:$!"

