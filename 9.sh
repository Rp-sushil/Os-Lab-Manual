# !/user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
# --------------------------
# Q) Write a shell script to read an integer find out the factorial of the integer.

read -p "Enter a Number: " n
fact=1;
if [ $n == 1 ]; then
	echo "1"
else
	for (( i=0; i<n; i++ )); do	
		fact=$(( fact * (i + 1) ))
	done
	echo $fact
fi
