#!/bin/bash -x

echo "Welcome to employee wage "

#CONSTANTS

WAGE_PER_HOUR=20;

#variables
present=1;
partTimePresent=2;
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

empDailyWage=$((empHour*WAGE_PER_HOUR));
