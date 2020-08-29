#! /bin/bash
wagePerHour=20
hours=8
attendance=$(( RANDOM%2 ))
if [ $attendance -eq 0 ]
then
	dailyWage=$(( wagePerHour*0 ))
else
	dailyWage=$(( wagePerHour*hours ))
fi
echo $dailyWage
