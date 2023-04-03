#!/usr/bin/bash
if [ "$#" -eq 1 ]
then
    if [ "$1"=="convert" ]
    then
        bash convert.sh
    fi
fi
echo "Start presentation building. Please wait ...."
xelatex -interaction=batchmode -shell-escape Speach.tex