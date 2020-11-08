# /user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
#--------------------------
# Q) Write a shell script program to read a character from keyboard and check whether it is vowel or not.

read -p "Enter a character: " ch
if [[ "$ch" == *[AEIOUaeiou]* ]]
then
	echo "$ch is vowel"
else
	echo "$ch is not vowel"
fi
