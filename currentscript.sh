#!/bin/bash

VARIABLE="some value"

echo "before calling other script:$VARIABLE"
echo "PID of current script is:$$"

source ./otherscript.sh

echo "After calling other script:$VARIABLE"
