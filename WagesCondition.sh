#! /bin/bash
wagePerHour=20
hours=1
workingDays=1
while [ $hours -le 100 ] || [ $workingDays -le 20 ]
do
	attendance=$(( RANDOM%3 ))
	case $attendance in
   	0) dailyWage=$(( wagePerHour*0 ))
			(( workingDays++ ))
      	;;
   	1) dailyWage=$(( wagePerHour*(hours/2) ))
			hours=$(( hours+4 ))
			(( workingDays++ ))
      	;;
   	*) dailyWage=$(( wagePerHour*hours ))
			hours=$(( hours+8 ))
			(( workingDays++ ))
     		;;
	esac
done
echo $dailyWage
