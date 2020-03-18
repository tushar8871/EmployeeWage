#!/bin/bash -x

echo "Welcome to employee wage "

#CONSTANTS

WAGE_PER_HOUR=20;

#variables
present=1;
partTimePresent=2;
attendanceCheck=$((RANDOM%3));

if [ $attendanceCheck -eq $present ]
then
	empHour=8;
elif [ $attendanceCheck -eq $partTimePresent ]
then
	 empHour=4;
else
	empHour=0;
fi

empDailyWage=$((empHour*WAGE_PER_HOUR));
