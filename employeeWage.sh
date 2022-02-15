ratePrHr=20
isPresent=1
partTime=$((RANDOM%2))
check=$((RANDOM%2))
if [ $check -eq $isPresent ]
then
	echo "Employee is Present"
	wrkHr=8
else
	echo "Employee is absent"
	wrkHr=0
fi
salary=$(($ratePrHr*wrkHr))
echo "Daily salary is $salary"

# Part time employee wage 
if [ $partTime -eq $isPresent ]
then
	partTimeHr=8
else
	echo "Employee is absent"
	partTimeHr=0
fi
salaryPartTime=$(($ratePrHr*partTimeHr))
echo "Salary of part Time employee is $salaryPartTime"
