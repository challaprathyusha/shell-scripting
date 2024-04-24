#!/bin/bash

VARIABLE="some value"

echo "before calling other script:$VARIABLE"
echo "PID of current script is:$$"

./otherscript.sh

echo "After calling other script:$VARIABLE"
