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

declare -A array
j=1
for i in res0 res1 res2 res3
do
	array[$j]=$i
	((j++)) 

done
echo ${array[@]}
echo ${!array[@]}

arr=($(for i in "${array[@]}"; do echo $i;done | sort -nr))
echo "descending order" ${arr[@]}
arr=($(for i in "${array[@]}"; do echo $i;done | sort -n))
echo "ascending order" ${arr[@]}
