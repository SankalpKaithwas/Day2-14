ratePrHr=20
isPresent=1
partTime=$((RANDOM%2))
check=$((RANDOM%2))
case $check in

	$isPresent) echo "Employee is Present"
		wrkHr=8
		;;

	*) echo "Employee is absent"
		wrkHr=0
		;;
esac
salary=$(($ratePrHr*wrkHr))
echo "Daily salary is $salary"

# Part time employee wage
case $check in

	$partTime) echo "Employee is present"
		partTimeHr=8
		;;

	*) echo "Employee is absent"
		partTimeHr=0
		;;
esac
salaryPartTime=$(($ratePrHr*partTimeHr))
echo "Salary of part Time employee is $salaryPartTime"
