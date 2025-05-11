#!/bin/bash

text=$1
folder=$2
number=$3

if [ $# -ne 3 ]; then
    echo "Usage: $0 \"<text>\" <folder_name> <number_between_2_and_8>"
    exit 1
fi

if [ -d "$folder" ] ; then
    echo "Error: The $folder already exists"
    exit 2
fi

pattern='^[0-9]+$'

if ! [[ $number =~ $pattern ]] ; then
    echo "Error: The $number is not a number"
    exit 3
elif [ $number -lt 2 ] || [ $number -gt 8 ] ; then
    echo "Error: The number must be a number between 2 and 8."
    exit 4
fi

mkdir -p "$folder"

for i in $(seq 1 $number); do
    echo "$text" > "$folder/file${i}.txt"
done

echo "===== Output : ls -al $folder ====="
ls -al $folder
echo 

echo "===== Check the text in each files ====="
for file in $(ls -1 $folder); do
    echo -n "${folder}/${file}: "
    cat ${folder}/${file}
done
