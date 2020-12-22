#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

randomcheck=$((RANDOM%2))               #To generate a random value 0 or 1
ispresent=1

if [ $ispresent -eq $randomcheck ]      #Checking for employee is present or absent
then
        rateperhr=20
        numofworkinghrs=8
        salary=$(( $rateperhr*$numofworkinghrs ))
else
        salary=0
fi
echo "employee wage :" $salary          #Printing salary
