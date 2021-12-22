#!/bin/bash
#Specific time, specific date, and the specific Casino game being played.


echo -n 'What game type are you searching?'
read name4
echo -n 'What date are you looking for?'
read name
echo -n 'What time are you looking for?'
read name2
echo -n 'Am or PM?'
read name3

if [[ $name4 == roulette ]] ; then
	 awk -F" " '{print $1, $2, $5, $6}' *$name* | grep -ih $name2 | grep -ih $name3 
fi

if [[ $name4 == "blackjack" ]] ; then
	 awk -F" " '{print $1, $2, $3, $4}' *$name* | grep -ih $name2 | grep -ih $name3
fi

if [[ $name4 = texas_hold_em ]] ; then 
	 awk -F" " '{print $1, $2, $7, $8}' *$name* | grep -ih $name2 | grep -ih $name3	
fi
