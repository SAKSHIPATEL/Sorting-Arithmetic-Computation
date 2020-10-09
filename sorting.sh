#!/bin/bash -x

read -p "Enter the first number" a
read -p "Enter the second number" b
read -p "Enter the third number" c
res1=$(($a+($b*$c)))
res2=$(($a*($b+$c)))
res3=$(($c+($a/$b)))
res4=$(($a%($b+$c)))
echo $res1
echo $res2
echo $res3
echo $res4
