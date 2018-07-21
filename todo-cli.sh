#!/bin/bash
if [ ! -f /tmp/foo.txt ]; then
    touch .todo.txt
fi

if [ $1 = -n ]; then 
NUMOFLINES=$(wc -l < .todo.txt)
((NUMOFLINES++))
echo $2 >> .todo.txt
fi

if [ $1 = list ]; then
cat -n .todo.txt
fi

if [ $1 = -d ]; then
uname=`uname`
    if [ $uname = 'Darwin' ]; then
        sed -i '' $2"d" .todo.txt
    fi
    if [ $uname = 'Linux' ]; then
        sed -i $2"d" .todo.txt
    fi
fi
