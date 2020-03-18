#!/bin/bash -x

echo "Welcome to employee wage "

#CONSTANTS
WAGE_PER_HOUR=20;
DAY_IN_MONTH=20;

#variables
present=1;
partTimePresent=2;
empMonthWage=0;
empHour=0;
days=0;
hours=0;

function getWorkHr(){
	case $1 in
		$present)
			empHour=8;
			echo $empHour;
			;;
		$partTimePresent)
			empHour=4;
			echo $empHour;
			;;
		*)
			empHour=0;
			echo $empHour;
			;;
	esac
}

while [[ $days -ne 20 && $hours -le 100 ]]
do
	attendanceCheck=$((RANDOM%3));
	empHour=$( getWorkHr $attendanceCheck )
	hours=$((hours+$empHour))
	((days++))
	dailyWage=$((empHour*WAGE_PER_HOUR))
	dailyWage[$days]=$dailyWage;

	empMonthWage=$((dailyWage+empMonthWage))
done
echo "${dailyWage[@]}"
