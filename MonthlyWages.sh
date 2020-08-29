#! /bin/bash
wagePerHour=20
hours=8
workingDays=20
attendance=$(( RANDOM%3 ))
case $attendance in
   0) dailyWage=$(( wagePerHour*0*workingDays ))
      ;;
   1) dailyWage=$(( wagePerHour*(hours/2)*workingDays ))
      ;;
   *) dailyWage=$(( wagePerHour*hours*workingDays ))
      ;;
esac
echo $dailyWage
