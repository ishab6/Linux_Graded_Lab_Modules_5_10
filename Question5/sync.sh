#!/bin/bash

DIRA="dirA"
DIRB="dirB"

echo "Files only in $DIRA:"
echo "--------------------"
ls "$DIRA" | grep -vFf <(ls "$DIRB")

echo
echo "Files only in $DIRB:"
echo "--------------------"
ls "$DIRB" | grep -vFf <(ls "$DIRA")

echo
echo "Comparing common files:"
echo "-----------------------"

for file in $(ls "$DIRA")
do
    if [ -f "$DIRB/$file" ]; then
        cmp -s "$DIRA/$file" "$DIRB/$file"
        if [ $? -eq 0 ]; then
            echo "$file : SAME"
        else
            echo "$file : DIFFERENT"
        fi
    fi
done

