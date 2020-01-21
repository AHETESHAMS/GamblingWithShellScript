#!/bin/bash 
days=0
bet=20
winnigDays=0
loosingDays=0
while [[ $days -lt 20 ]]
do
	cash=100
	goal=250
	win=0
	loose=0
	while  [[ $cash -gt 20 && $cash -lt $goal ]]
	do
		randomCheck=$(( RANDOM%2 ))
		if [[ $randomCheck -eq 1 ]]
		then
			echo "Player Won"
			cash=$(( cash+bet*2 ))
			(( win++ ))
		else
			echo "Player Loose"
			cash=$(( cash-bet*2 ))
			(( loose++ ))
		fi
		echo "Cash"$cash
	done
	if [[ $win -gt $loose ]]
	then
		(( winnigDays++ ))
	else
		(( loosingDays++ ))
	fi
	(( days++ ))
done
echo "Winnig days "$winnigDays
echo "Loosing Days "$loosingDays
echo $days

