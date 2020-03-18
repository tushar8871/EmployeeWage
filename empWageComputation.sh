#!/bin/bash -x

echo "Welcome to employee wage "

#CONSTANTS

WAGE_PER_HOUR=20;
FULL_DAY_HOUR=8;

#variables
present=1;
attendanceCheck=$((RANDOM%2));

if [ $attendanceCheck -eq $present ]
then
	echo "Employee is present"
	empDailyWage=$((WAGE_PER_HOUR*FULL_DAY_HOUR))
	echo $empDailyWage
else
	echo "Employee is absent"
	empDailyWage=0;
fi
