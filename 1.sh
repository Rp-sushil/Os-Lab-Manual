# /user/bin/shell
#---------------------------
# Author: 	SUSHIL KUMAR
# AdmissionNo. : 18JE0861
# --------------------------
# Q) Write a shell script program to read two numbers and perform basic airthmetic operations(+, -, *, /, %)

echo -e "Enter First Integer: \c"
read a
echo -e "Enter Second Integer: \c"
read b
sum=$(( a + b ))
diff=$(( a - b ))
product=$(( a * b ))
div=$(( a / b ))
rem=$(( a % b ))
echo "Sum:$sum Diff:$diff Product:$product Div:$div Rem:$rem" 
