#!/bin/bash

folder=$1

if [ -z "$folder" ]; then
    echo "Error: please put folder name"
    echo "Usage: $0 <folder_name>"
    exit 1
fi

if [ -d "$folder" ]; then
    echo "Error: The $folder already exists"
    exit 2
else
    ls -la "$folder"    
fi