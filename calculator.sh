#!/bin/bash
#The script should prompt the user to enter integers.
#ask for number of integers
echo "How many integers you would like to input?"
read total
echo "Please enter your first INTGER:"
read input
result=$input
count=1
#while the number of inputs less than expected total number, perform the caculation
while [ $count -lt $total ] 
do
  echo "Please enter an intger:"
  read input
  echo "Now you entered $input"
  let count=count+1
#The script should prompt the user to choose an operation: +,-,*,/ 
  echo "Please select an operator from '+','-','*','/':"
  read operator 
  #Use conditionals ('if`, `elif`, `else') to perform the chosen operation between previous result and new input.
  if [ "$operator" = "+" ]
  then
    echo "processing: $result + $input"
    result=$(echo "$result + $input" | bc)
  elif [ "$operator" = "-" ]
  then
    echo "processing: $result - $input"
    result=$(echo "$result - $input" | bc)
  elif [ "$operator" = "*" ]
  then
    echo "processing: $result * $input"
    result=$(echo "$result * $input" | bc)
  elif [ "$operator" = "/" ]
  then
    if [ $input -eq 0 ] #Handle division by zero with an appropriate error message.
    then
      echo "The divisor can not be zero!"
      exit 1
    else
      echo "processing: $result / $input"
      result=$(echo "scale=3; $result / $input" | bc)
    fi
  else
    echo "Please select a valid operator."
  fi
done
#Display the result of the operation.
echo "The result is $result."
