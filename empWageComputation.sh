echo "Welcome to Employee Wage Computation Program"

#!/bin/bash -x

randomcheck=$((RANDOM%2))
ispresent=1

if [ $ispresent -eq $randomcheck ]
then
        echo "employee is present"
else
        echo "employee is absent"
fi



#!/bin/bash -x

randomcheck=$((RANDOM%2))
ispresent=1

if [ $ispresent -eq $randomcheck ]
then
        rateperhr=20
        numofworkinghrs=8
        salary=$(( $rateperhr*$numofworkinghrs ))
else
        salary=0
fi
echo "employee wage :" $salary




#!/bin/bash -x

randomcheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
salary=0
ratePerHr=20
if [ $isFullTime -eq $randomcheck ]
then
        numOfWorkingHrs=8
elif [[ $isPartTime -eq $randomcheck ]]
then
        numOfWorkingHrs=4
else
        numOfWorkingHrs=0
fi
salary=$(( ratePerHr*numOfWorkingHrs ))
echo "Employee wage :" $salary




#!/bin/bash -x

empcheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
salary=0
ratePerHr=20

case $empcheck in

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



#!/bin/bash -x


isFullTime=1
isPartTime=2
salary=0
ratePerHr=20
numOfWorkingDays=20

for((day=1;day<=numOfWorkingDays;day++))
do
        empcheck=$((RANDOM%3))
        case $empcheck in

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
echo "Employee Wage per day :" $salary
totalSalary=$(( $totalSalary + $salary ))
done

echo "Employee wage per month :" $totalSalary
