# /user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
# --------------------------
# Q) Write a shell script to check whether the given number is prime or not.

read -p "Enter a Number: " n
i=2; j=0;
if (( $n == 2 )); then
	echo "$n is prime"
	exit
fi
while (( $i < $n ))
do
	if (( $n % $i == 0 )); then
		(( j++ ))
	fi
	(( i++ ))
done
if [ $j != 0 ]; then
	echo "$n is not Prime"
else
	echo "$n is Prime"
fi
