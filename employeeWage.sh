ratePrDay=160
i=0
days=0
partDays=0
while (($i<20))
do
check=$((RANDOM%2))
isPresent=1
partTime=$((RANDOM%2))
case $check in

	$isPresent) days=$(($days+1))
		;;
esac
case $check in

	$partTime) partDays=$(($partDays+1))
		;;
esac

i=$(($i+1))
done

salary=$(($days*$ratePrDay))
echo "Monthly salary of employee is $salary"

# Part time employee wage
salaryPartTime=$(($partDays*$ratePrDay))
echo "Monthly Salary of part Time employee is $salaryPartTime"
