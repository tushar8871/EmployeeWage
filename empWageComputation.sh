#!/bin/bash -x

echo "Welcome to employee wage "

#CONSTANTS
WAGE_PER_HOUR=20;
DAY_IN_MONTH=20;

#variables
present=1;
partTimePresent=2;
empMonthWage=0;
days=0;

while [[ $days -ne 20 ]]
do
	attendanceCheck=$((RANDOM%3));
	case $attendanceCheck in
		$present)
			empHour=8;
			;;
		$partTimePresent)
			empHour=4;
			;;
		*)
			empHour=0;
			;;
	esac
	
	((days++))
	empMonthWage=$((empHour*WAGE_PER_HOUR+empMonthWage))
done
