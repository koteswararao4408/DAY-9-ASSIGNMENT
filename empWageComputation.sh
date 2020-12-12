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




#!/bin/bash -x


IS_FULL_TIME=1
IS_PART_TIME=2
SALARY=0
RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HRS=60

totalworkingDays=0;
totalworkingHrs=0;

while [[ $totalworkingHrs -lt $MAX_WORKING_HRS && $totalworkingDays -lt $MAX_WORKING_DAYS ]]

do
        ((totalworkingDays++))
        empcheck=$((RANDOM%3))

                case $empcheck in

                        $IS_FULL_TIME)
                echo "Full Time Employee"
                empHrs=8
                ;;
                $IS_PART_TIME)
         echo "partTime Employee"
         empHrs=4
         ;;
                *)
        echo "Employee is Absent"
         empHrs=0
         ;;

                esac
   echo "$empHrs"
        totalworkingHrs=$(($totalworkingHrs+$empHrs))
done

totalsalary=$(($totalworkingHrs*$RATE_PER_HR))
echo "Employee Wage per month :" $totalsalary




#!/bin/bash -x


IS_FULL_TIME=1
IS_PART_TIME=2
SALARY=0
RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HRS=60

totalworkingDays=0;
totalworkingHrs=0;

function getworkingHrs()
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

do
        ((totalworkingDays++))
        empcheck=$((RANDOM%3))
        empHrs="$(getworkingHrs $empcheck)"
        totalworkingHrs=$(( $totalworkingHrs + $empHrs ))
done

totalsalary=$(( $totalworkingHrs * $RATE_PER_HR ))
echo "Employee Wage per month :" $totalsalary




#!/bin/bash -x


IS_FULL_TIME=1
IS_PART_TIME=2
SALARY=0
RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HRS=60

totalworkingDays=0;
totalworkingHrs=0;

function getworkingHrs()
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

do
        ((totalworkingDays++))
        empcheck=$((RANDOM%3))
        empHrs="$(getworkingHrs $empcheck)"
        dailyWage=$(($empHrs*$RATE_PER_HR))
        dailyWageArray[$totalworkingDays]=$dailyWage
        totalworkingHrs=$(( $totalworkingHrs + $empHrs ))
done

totalsalary=$(( $totalworkingHrs * $RATE_PER_HR ))
echo "Array elements" ${dailyWageArray[@]}
echo "Index" ${!dailyWageArray[@]}
echo "Employee Wage per month :" $totalsalary
