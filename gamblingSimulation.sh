#!/bin/bash -x
cash=100
bet=20
goal=200
days=0
win=0
loose=0
while [[ $cash -gt 20 && $days -lt 20 ]]
do
randomCheck=$(( RANDOM%2 ))
if [[ $randomCheck -eq 1 ]]
then
	cash=$(( cash+bet*2 ))
	(( win++ ))
else
	cash=$(( cash-bet*2 ))
	(( loose++ ))
fi
(( days++ ))
done
echo $win "Times Won"
echo $loose "Times Loose"
