#!/bin/bash
echo "Enter a number"
read numOne
echo "Enter a number"
read numTwo
sum=$(($numOne + $numTwo))
echo "The sum is: $sum"

echo "File Name: $0"
echo "Command Line Argument 1: $1"
grep -c $1 $2

