#!/bin/bash -x
cash=100
bet=20
goal=200
i=0
while [[ $cash -gt 20 && $i -lt 10 ]]
do
randomCheck=$(( RANDOM%2 ))
if [[ $randomCheck -eq 1 ]]
then
	cash=$(( cash+bet*2 ))
else
	cash=$(( cash-bet*2 ))
fi
(( i++ ))
done
if [[ $cash -ge $goal ]]
then
	echo "Player Won..."
else
	echo "Player Loose..."
fi
