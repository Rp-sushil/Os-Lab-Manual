# !/user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
# --------------------------
# Q) Write a shell script program to read an array of 'n' integers and preform binary search
read -p "Input Sorted Array: " input
read -p "Element to be search: " x
arr=()
n=0;
for z in ${input[@]}; do
	arr[$n]=$z
	(( n++ ))
done
l=0; h=$((n-1));
while [ $l -le $h ]; do
	mid=$(( (l+h)/2 ))
	if [ $x -eq ${arr[$mid]} ]; then
		echo "$x is at Index $((mid+1))"
		exit
	elif [ $x -lt ${arr[$mid]} ]; then
		h=$((mid-1))
	else
		l=$((mid+1))
	fi
done
echo "Element Not Present In Array"

