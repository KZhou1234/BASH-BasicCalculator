# Basic Calculator

## Overview
This practice is to create a basic calculator program in Bash that can perform addition, subtraction, multiplication, and division.
The basic-calculator can take two integers and one operation sign from user to perform the calculation.
Command `read`, Conditional statements (`If-Else`) are used to perform the basic functionalitis.
After optimization, unlimited inputs can be taken from user and perform correct calculation.
## Basic Calculator
1. This calculator I've simply used the if-else statement to determine which operation should be taken.
2. To get the result, I've used `result=$(echo "$num1 + $num2" | bc)` to perform mathematical calculation.
3. To get more precise result in division, I'v used `result=$(echo "scale=3; $num1 / $num2" | bc)` which sets the decimal places to three.
## Calculator
1. The script `calculator.sh` that can take multiple integers and operation signs by using an additional `while` loop.
2. Gather the previous result and new input first, then take the operator and perform the calculation.

## Results
* Taking two integers using basic calculator.  
  <div align="center">
    <img width="707" alt="image" src="https://github.com/user-attachments/assets/0bef667f-f56a-45dd-9eeb-7e25edb53cec">
  </div>  
* Handle division by zero. An error message will display and exit 1.  
  <div align="center">
   <img width="827" alt="image" src="https://github.com/user-attachments/assets/71895677-413a-4e64-9a36-4be6b9ddbcab">
  </div>  
* Handle the invalid input operator.  
    <div align="center">
      <img width="799" alt="image" src="https://github.com/user-attachments/assets/2f7d1ef4-f582-4184-a909-942d3278bbc9">
    </div>  

* If the quotient is not an integer, keep three decimal places.  
    <div align="center">
      <img width="648" alt="image" src="https://github.com/user-attachments/assets/c92ed29e-f5da-4dd0-aadb-c7f776d20464">
    </div>  

* When the user has multiple inputs, the script `calculator.sh` can perform calculations.
    <div align="center">
      <img width="633" alt="image" src="https://github.com/user-attachments/assets/1c701c36-4951-45ab-9be2-c70380ff980f">

    </div>
## Conclusions
This exercise helped me to practice to use loops, conditional statements, and mathematical calculations. 
I learned that `bc` is a powerful command that can be used for precise calculations. 
I also learned how to handle decimals by using `scale`. 
In the troubleshooting process, I realized how important pseudo-code is. Before writing and running the script, I should be more clear about the process and the expected output at each step. 
