# /user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
# --------------------------
# Q) Write a shell script to read integers number and print the largest among three numbers
echo -e "Enter 1st Integer: \c"
read a
echo -e "Enter 2nd Integer: \c"
read b
echo -e "Enter 3rd Integer: \c"
read c
if [ $a -gt $b ]
then
	if [ $a -gt $c ]
	then
		echo "Largest Integer $a"
	else
		echo "Larest Integer $c"
	fi
elif [ $b -gt $c ]
then
	echo "Largest Integer $b"
else
	echo "Largest Integer $c"
fi
