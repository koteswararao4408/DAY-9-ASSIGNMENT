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
