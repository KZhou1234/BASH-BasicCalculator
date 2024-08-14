#!/bin/bash
#The script should prompt the user to enter two integers.
echo "Please enter the first number:"
read num1
echo "Please enter the second number:"
read num2
#The script should prompt the user to choose an operation: +,-,*,/
echo "Please select an operator from '+','-','*','/':"
read operator

#Use conditionals ('if`, `elif`, `else') to perform the chosen operation.
if [ "$operator" = "+" ]
then
  result=$(echo "$num1 + $num2" | bc)
elif [ "$operator" = "-" ]
then
  result=$(echo "$num1 - $num2" | bc)
elif [ "$operator" = "*" ]
then
  result=$(echo "$num1 * $num2" | bc)
elif [ "$operator" = "/" ]
then
  if [ $num2 -eq 0 ] #Handle division by zero with an appropriate error message.
  then
    echo "The divisor can not be zero!"
    exit 1
  else
    result=$(echo "scale=3; $num1 / $num2" | bc)
  fi
else
  echo "Please select a valid operator."
fi

#Display the result of the operation.
echo "The result is $result."

