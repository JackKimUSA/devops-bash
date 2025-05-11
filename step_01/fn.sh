#!/bin/bash

number=$1

if [ -z "$number" ]; then
    echo "Error: please put your number"
    echo "Usage: $0 <number>"
    exit 1
fi

add_three() {
    num=$1
    pattern='^-?[0-9]+$'

    if ! [[ $num =~ $pattern ]] ; then
        echo "Error: The $number is not a number"
        exit 2
    else
        echo "Result of add 3: $(( $num + 3 ))"
    fi
}

add_three "$number"