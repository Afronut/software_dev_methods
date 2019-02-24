#!/bin/bash
# Authors : Coovi Meha
# Date: 31/01/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a pregular Expression"
read expression
echo "Enter a file name to search"
read file
grep "$expression" $file 
echo "Your file contain:"
grep '[0-9]\{3\}-[0-9]\{3\}-' regex_practice.txt | grep -v -c '[0-9]\{3\}/'
echo "phone number."
echo "Your file contain:"
grep '.com' regex_practice.txt | grep '@' | grep -c '.com'
echo "Email."

grep '[0-9]\{3\}-[0-9]\{3\}-' regex_practice.txt | grep -v '[0-9]\{3\}/' | grep '303' >phone_results.txt

grep '@geocities.com' regex_practice.txt > email_results.txt
grep $2 $1 >command_results.txt