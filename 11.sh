# !/user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
# --------------------------
#Q) Write a shell script program to read an array of 'n' integers and sort number in ascending order using bubble sort technique.
read -p "Input Array: " input
array=()
i=0;
for num in ${input[@]}; do
	array[$i]=$num
	(( i++ ))
done
n=${#array[@]}
for (( i=0; i<n; i++ )); do
	for (( j=0; j<n-1; j++ )); do
		if [ ${array[$j]} -gt ${array[$((j+1))]} ]; then
			temp=${array[$j]}
			array[$j]=${array[$((j+1))]}
			array[$((j+1))]=$temp
		fi
	done
done
echo "Sorted Array: ${array[@]}"
		
