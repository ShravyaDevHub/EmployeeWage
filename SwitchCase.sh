#! /bin/bash
wagePerHour=20
hours=8
attendance=$(( RANDOM%3 ))
case $attendance in
	0) dailyWage=$(( wagePerHour*0 ))
		;;
	1) dailyWage=$(( wagePerHour*(hours/2) ))
		;;
   *) dailyWage=$(( wagePerHour*hours ))
		;;
esac
echo $dailyWage
