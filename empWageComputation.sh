#!/bin/bash -x

echo "Welcome to employee wage "

present=1;
attendanceCheck=$((RANDOM%2));

if [ $attendanceCheck -eq $present ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi


