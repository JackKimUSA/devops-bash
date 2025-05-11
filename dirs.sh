#!/bin/bash

folder=$1

if [ -z "$folder" ]; then
    echo "Error: please put folder name"
    echo "Usage: $0 <folder_name>"
    exit 1
fi

if [ -d "$folder" ]; then
    ls -la "$folder"
elif [ -f "$folder" ]; then
    echo "The $folder is not a directory"
else
    echo "Error: The $folder does not found"
fi