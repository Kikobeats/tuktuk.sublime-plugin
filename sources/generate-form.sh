#!/bin/bash

generate(){
    name=`echo $line | tr ' ' '-'`
    echo "

    " > $1/tuk-$name.sublime-snippet
}

while read line
do
   generate $1 $line
done < $2