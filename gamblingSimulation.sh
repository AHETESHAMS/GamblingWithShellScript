#!/bin/bash -x
cash=100
bet=1
i=0
while [[ $i -lt 10 ]]
do
randomCheck=$(( RANDOM%2 ))
if [[ $randomCheck -eq 0 ]]
then
	echo "Player Won..."
else
	echo "Player Loose..."
fi
(( i++ ))
done
