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
