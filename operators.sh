#!/bin/bash
# This Script is tets all operators  which are avialble in bash
# 1.Airthmetic OPerators Examples
echo "1:Airthmetic Operators"
# Read input from the user
read -r -p "Enter a: " a
read -r -p "Enter b: " b
echo
add=$((a+b))
echo "The addition value of given two numbers is : $add"
sub=$((a-b))
echo "The subtraction value of given two numbers is: $sub"
mul=$((a*b))
echo "The multiplication value of given two numbers is:" "$mul"
div=$((a/b))
echo "THe division value of given two numbers is:" ${div}
mod=$((a%b))
echo "The modulus value of given two numbers is:" ${mod}
((++a))
echo "Incremental Operators is applied on a: $a"
((--b))
echo "Decremental Operator is applied on b:" "${b}" 
echo
# 2.Relational Operators Examples
echo "2.Relational Operators"

read -r -p "Enter x: " x
read -r -p "Enter y: " y

if ((x==y))
then 
echo "== Operator Result: Condition is TRUE"
else
echo "== Operator Result: Condition is FALSE"
fi

if ((x!=y))
then
echo "!= Operator Result: Condition is TRUE"
else
echo "!= Operator Result: Condition is FALSE"
fi
if ((x<y)) 
then
echo "< Operator Result: Condition is TRUE"
else
echo "< Operator Result: Condition is FALSE"
fi
if ((x<=y))
then
echo "<= Operator Result: Condition is TRUE"
else
echo "<= Operator Result: Condition is FALSE"
fi
if ((x>y)) 
then
echo "> Operator Result: Condition is TRUE"
else
echo "> Operator Result: Condition is FALSE"
fi
if ((x>=y))
then
echo ">= Operator Result: Condition is TRUE"
else
echo ">= Operator Result: Condition is FALSE"
fi

# 3.Logical or Bollean OPerators Examples
echo "3.Logical or Bollean Operators"
read -p "Enter A: " A
read -p "Enter B: " B
# Logical AND && Operator
if [ "$A" == "True" ]  && [ "$B" == "True" ]
then
echo "&& Operator Result: Both are true so it is TRUE"
else
echo "&& Operator Result is Both are not true so it is FALSE"
fi
# Logical OR || OPerator
if [ "$A"=="True" ] || [ "$B"=="True" ]
then
echo "|| Operator Result: One of the operands is true so it is TRUE"
else
echo "|| Operator Result: None of operand is true so it is FALSE"
fi

# Not Equal To Operator
if [ ! "$A" == "True" ]
then
echo "!= Operator Result is TRUE"
else
echo "!= Operator Result is FALSE"
fi

