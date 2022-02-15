function getWorkHours() {
i=0
days=0
partDays=0
workHr=0
partWorkHr=0

while (( $i<20 && $workHr<100 && $partWorkHr<100 ))
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
}

getWorkHours

echo "Work hours of employee is $workHr"

# Part time employee work hours
echo "Work hours of part Time employee is $partWorkHr"
