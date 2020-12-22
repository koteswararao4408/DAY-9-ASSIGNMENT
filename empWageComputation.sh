#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

empcheck=$((RANDOM%3))                     #To generate a random value 0 to 2
isFullTime=1
isPartTime=2
salary=0
ratePerHr=20

case $empcheck in                          #switch case for random value

        $isFullTime)
        echo "Full Time Employee"
        empHrs=8
        ;;
        $isPartTime)
        echo "partTime Employee"
        empHrs=4
        ;;
        *)
        echo "Employee is Absent"
        empHrs=0
        ;;
esac

salary=$(( $ratePerHr * $empHrs ))
echo "Employee Wage :" $salary
