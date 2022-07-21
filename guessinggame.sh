#!/usr/bin/env bash

num_files=$(ls | wc -l)

function Guess {
    echo "Guess how many files are there in the current directory: "
    read guess
}

Guess

while [[ $guess -ne $num_files ]]
do
    if [[ $guess -lt $num_files ]]
    then
        echo "Too Low"
    else
        echo "Too High"
    fi
    Guess
done

echo "Congrations! Your guess is correct. There are exactly ${guess} in the current directory."
echo "Thanks for playing this guessing game."
echo "Written by - @MacVinay."
