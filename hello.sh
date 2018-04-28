#!/bin/bash

#simple hello world program
echo "Welcome to bash programming "

#variable declaration
value=10

#print the value of the variable
echo The value of variable is $value

#There are two ways for display out put on the screen
echo "The value of variable is $value"

echo "Enter the userName"
#Accept input from the user use read 
read firstName
echo "Username :"$firstName

#Accept number using
read -p "Enter your number :" number
#echo $[number%2] # echo $((number%2))

#if example 
if [ $[ number % 2 ] -eq 0 ] #if (($((number%2))==0))
then
	echo "$number is even !"
else
	echo "$number is odd !"
fi
#case example
case $((number%2)) in 
	0) echo "Zero"
	;;
	1) echo "One"
	;;
	2) echo "Two"
	;;
esac
#case example
printf "Which distribution do u Know?"
read DISTR

case $DISTR in
	ubuntu)
		echo "I know it! It is operating system based on Debian"
		;;
	centos|rhel)
		echo "Hey ! it is my favorite server"
		;;
	windows)
		echo "Very funny...."
		;;
	*)
		echo "Hmmm, seems i ve never used"
		;;
esac 

#while loop
counter=0
echo $((counter<10))
while (($((counter<10)))) #[ $counter -lt 10 ]
do
	echo $counter
	counter=$[counter+1] #counter=`expr $counter + 1`
done 

#for example
for num in hello how are you
do
	echo $num
done
