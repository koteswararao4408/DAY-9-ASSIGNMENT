#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

#constants
IS_FULL_TIME=1
IS_PART_TIME=2
SALARY=0
RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HRS=60

#Variables
totalworkingDays=0;
totalworkingHrs=0;
function getworkingHrs()             #function to get working hours of an employee
{
     case $empcheck in
         $IS_FULL_TIME)
         empHrs=8
         ;;
         $IS_PART_TIME)
         empHrs=4
         ;;
         *)
         empHrs=0
         ;;
      esac
      echo $empHrs
}
while [[ $totalworkingHrs -lt $MAX_WORKING_HRS && $totalworkingDays -lt $MAX_WORKING_DAYS ]]
                                                                                               #While loop for Maximum working days and hours
do
        ((totalworkingDays++))
        empcheck=$((RANDOM%3))
        empHrs="$(getworkingHrs $empcheck)"                 #Calling function and checking for random value
        dailyWage=$(($empHrs*$RATE_PER_HR))                 #Calculating daily wage
        dailyWageArray[$totalworkingDays]=$dailyWage        #Calculating daily wage and storing in array
        totalworkingHrs=$(( $totalworkingHrs + $empHrs ))
done
totalsalary=$(( $totalworkingHrs * $RATE_PER_HR ))          # Calculating Total salary of an employee
echo "Array elements" ${dailyWageArray[@]}                  #Printing daily wages
echo "Index" ${!dailyWageArray[@]}
echo "Employee Wage per month :" $totalsalary
