#!/bin/bash
n=(12 18 18 22 18 8 19 40)
m=(34 11 11 11 1 25 21 9)
o=(4 6 7 6 8 10 18 11)
s=(15 20 15 15 50 39 65 3)
t=(30 25 4 15 9 60 33 21)
u=(5 -1 2 15 3 20 18 -8)

counter=0
for name in main.py negated.py ; do
    
    if [ $counter == "0" ] ; then
        echo "Test of main.py"
        res=(1 0 0 0 0 0 0 0)
        counter=`expr $counter + 1`
    else
        echo "Test of negated.py"
        res=(0 1 1 1 1 1 1 1)
    fi
    for x in `seq 0 7` ; do
    	result=`python $name ${n[$x]} ${m[$x]} ${o[$x]} ${s[$x]} ${t[$x]} ${u[$x]}`
    	if [ "$result" != "${res[$x]}" ] ; then
    		echo "arguments: " ${n[$x]} ${m[$x]} ${o[$x]} ${s[$x]} ${t[$x]} ${u[$x]}
    		echo "result: " $result
    		echo "expected result: "  ${res[$x]}
    	else
    		echo "Result as expected."
    	fi
    done
done
