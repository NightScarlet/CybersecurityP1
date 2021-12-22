#!/bin/bash

#Hawaii is best
states=('California' 'Oregon' 'Arizona' 'Hawaii' 'Alaska')
nums=$(echo {0..9})
ls_output=$(ls)
for state in ${states[@]}
do 
	if [ $state == 'Hawaii' ]
	then 
		echo  "$state is the best!"
	else 
		echo "$state is okay, but Hawaii is better"
	fi
done

#Bonus 
for n in {$nums[@]}
do
	if [ $n = 3 ] || [ $n = 5 ] || [ $n = 7 ]
	then 
		echo $n
	fi
done

# Create a 'for' loop to print out each item in 'ls' command variable
for k in ${ls_output[@]}; do
        echo $k
done



#Super Bonus
