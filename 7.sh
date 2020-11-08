# !/user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
# --------------------------
# Q) Write a shell script to perform Conversion of temperature in Celsius to Farenhite and Farenhite to Celisus.

printf "1 F -> C \n2 C -> F \n"
read -p "Enter 1 OR 2 : " choice
if (( $choice == 1 )); then
	read -p "Enter Temp in F: " f
	c=`echo "scale=2; (5/9)*($f-32)" | bc -l`
	echo "Temp in C: $c"
else
	read -p "Enter Temp in C: " c
	f=`echo "scale=2; (9/5)*$c + 32" | bc -l`
	echo "Temp in F: $f"
fi

