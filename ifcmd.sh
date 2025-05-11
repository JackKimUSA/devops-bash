#!/bin/bash

number=$1

if [ -z "$number" ]; then
    echo "Error: please put your number"
    echo "Usage: $0 <number>"
    exit 1
fi

pattern='^[0-9]+$'

if ! [[ $number =~ $pattern ]] ; then
    echo "Error: The $number is not a number"
    exit 2
fi

if (( number % 2 == 0 )); then
    echo "The number is an even number"
else
    echo "The number is an odd number"
fi