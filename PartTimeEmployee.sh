#! /bin/bash
wagePerHour=20
hours=8
attendance=$(( RANDOM%3 ))
if [ $attendance -eq 0 ]
then
	dailyWage=$(( wagePerHour*0 ))
elif [ $attendance -eq 1 ]
then
	dailyWage=$(( wagePerHour*(hours/2) ))
else
	dailyWage=$(( wagePerHour*hours ))
fi
echo $dailyWage
