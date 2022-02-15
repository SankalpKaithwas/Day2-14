ratePrHr=20
workHr=0
partWorkHr=0
i=0
days=0
partDays=0
while (( $i<20 && $workHr<100 ))
do
check=$((RANDOM%2))
isPresent=1
partTime=$((RANDOM%2))
case $check in

	$isPresent) days=$(($days+1))
		workHr=$(($workHr+8))
		;;
esac
case $check in

	$partTime) partDays=$(($partDays+1))
		partWorkHr=$(($partWorkHr+8))
		;;
esac

i=$(($i+1))
done

salary=$(($days*$ratePrHr*$workHr))
echo "Monthly salary of employee is $salary for $days days $workHr hours"

# Part time employee wage
salaryPartTime=$(($partDays*$ratePrHr*$partWorkHr))
echo "Monthly Salary of part Time employee is $salaryPartTime for $partDays days $partWorkHr hours"
