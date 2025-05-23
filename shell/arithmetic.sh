#!/bin/bash
read -p "Enter first number: " num1
read -p "Enter second number: " num2
echo "Addition: $num1 + $num2 = $((num1 + num2))"
echo "Multiplication: $num1 * $num2 = $((num1 * num2))"
if [ $num1 -lt $num2 ]
then
echo "Subtraction: $num2 - $num1 = $((num2 - num1))"
echo "Division (integer): $num2 / $num1 = $((num2 / num1))"  # Truncates decimals
else
echo "Subtraction: $num1 - $num2 = $((num1 - num2))"
echo "Division (integer): $num1 / $num2 = $((num1 / num2))"  # Truncates decimals
fi
