#! /bin/bash
wagePerHour=20
hours=8
workingDays=20
attendance=$(( RANDOM%3 ))
case $attendance in
   0) totalWage=$(( wagePerHour*0*workingDays ))
      ;;
   1) totalWage=$(( wagePerHour*(hours/2)*workingDays ))
      ;;
   *) totalWage=$(( wagePerHour*hours*workingDays ))
      ;;
esac
echo $totalWage
