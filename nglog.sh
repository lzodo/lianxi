#!/bin/bash

RES=($(grep "23/Apr/2020" nowcoder1.txt |grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"|sort|uniq -c|sort -r))
for(( i=0; i<${#RES[*]}; i++ ))
do
    if [ $[ $i%2 ] -eq 0 ]
    then
        echo "${RES[$i]} ${RES[$i+1]}"
    fi
done

c=100


