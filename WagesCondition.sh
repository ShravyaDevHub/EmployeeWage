#! /bin/bash
wagePerHour=20
hours=1
workingDays=1
while [ $hours -le 100 ] || [ $workingDays -le 20 ]
do
	attendance=$(( RANDOM%3 ))
	case $attendance in
   	0) totalWage=$(( wagePerHour*0*workingDays ))
			(( workingDays++ ))
      	;;
   	1) totalWage=$(( wagePerHour*(hours/2)*workingDays ))
			hours=$(( hours+4 ))
			(( workingDays++ ))
      	;;
   	*) totalWage=$(( wagePerHour*hours*workingDays ))
			hours=$(( hours+8 ))
			(( workingDays++ ))
     		;;
	esac
done
echo $totalWage
