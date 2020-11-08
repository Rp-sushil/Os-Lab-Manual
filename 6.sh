# !/user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
# --------------------------
# Q) Write a shell script to find the Armstrong numbers between 1 to N

read -p "Enter Number: " n
i=1;
while (( $i <= $n )); do
	flag=false; rem=i; temp=0 
	while (( $rem > 0 )); do
		temp=$(( temp + (rem % 10) ** 3 ))
		rem=$(( rem/10 ))
	done
	if (( $temp == $i )); then
		printf "$i "
	fi
	(( i++ ))
done
echo

