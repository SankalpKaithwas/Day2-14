ratePrHr=20
isPresent=1
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
