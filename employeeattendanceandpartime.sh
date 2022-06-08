FULL_DAY_WORKING=8
WAGE_PER_HR=20

dailyWage=0

attendance=$((RANDOM%2))
echo "Random number: $attendance"

if [[ $attendance == 0 ]]
then
	echo "Employee is absent"
else
	echo "Employee is present"
	dailyWage=$(($FULL_DAY_WORKING*$WAGE_PER_HR))
	echo "Daily wage: $dailyWage"
fi

# employee Parttime

WAGE_PER_HR=20
FULL_DAY_WORKING_HR=8
HALF_DAY_WORKING_HR=4
dailyWage=0

attendance=$((RANDOM%3))

for ((i=0; i<$WAGE_PER_HR; i++ ))
do

case $attendance in
	1)
		echo "Employee is present"
		empHrs=8
		dailyWage=$(($FULL_DAY_WORKING_HR*$WAGE_PER_HR))
		echo "Daily wage: $dailyWage"
		;;
	2)
		echo "Employee is present"
                empHrs=4
                dailyWage=$(($HALF_DAY_WORKING_HR*$WAGE_PER_HR))
                echo "Daily wage: $dailyWage"
		;;
	0)
		echo "EMployee is absent"
		dailyWage=0
		echo "Daily wage: $dailyWage"
esac
done