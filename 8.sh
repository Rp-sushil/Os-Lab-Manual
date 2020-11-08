# !/user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
# --------------------------
# Q) Write a shell script to read an integer find out the reverse of the integer using function and check whether integer is palindrome or not

read -p "Enter N: " n

reverse( ) {
	local n=$1
	local m=$1
	local rn=0
	local rem=0
	while (( $n > 0 )); do
		rem=$(( n % 10 ))
		n=$(( n/10 ))
		rn=$(( rn*10 + rem ))
	done
	echo "Reverse of $m is $rn"
	if [ $m == $rn ]; then
		echo "$m is Palindrome"
	else
		echo "$m is not Palindrome"
	fi
}

reverse $n
