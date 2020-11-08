# !/user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
# --------------------------
# Q) Write a shell script to print out the Fibonacci series up to a limit

read -p "Enter Numbers of terms: " n
a=0; b=1; c=1; i=3;
printf "$a $b "
while (( $i <= $n ))
do
	c=$((a + b))
	a=$b
	b=$c
	(( i++ ))
	echo -n "$c "
done
