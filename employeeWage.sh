isPresent=1
check=$((RANDOM%2))
if [ $check -eq $isPresent ]
then 
	echo "Employee is Present"
else
	echo "Employee is absent"
fi
