# !/user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
# --------------------------
# Q) Write a shell script program to read an array of 'n' integers  and perform linear search operation

read -p "Enter Numbers in Array (seperated by 'space'): " input
read -p "Enter Element to be searched in Array: " x
i=0;
for num in ${input[@]}; do
	(( i++ ))
	if [ $num == $x ]; then
		echo "Element Found at Index $i"
	       	exit
	fi
done
echo "Element not Found"
