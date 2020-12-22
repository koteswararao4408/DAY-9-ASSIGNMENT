#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

randomcheck=$((RANDOM%3))               #To generate a random value 0 to 2
isFullTime=1
isPartTime=2
salary=0
ratePerHr=20
if [ $isFullTime -eq $randomcheck ]     #Checking for fulltime employee
then
        numOfWorkingHrs=8
elif [[ $isPartTime -eq $randomcheck ]] #Checking for parttime employee
then
        numOfWorkingHrs=4
else
        numOfWorkingHrs=0
fi
salary=$(( ratePerHr*numOfWorkingHrs ))
echo "Employee wage :" $salary           #Printing salary
