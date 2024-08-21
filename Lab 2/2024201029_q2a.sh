#!/bin/bash

a=0
b=1
n=0
while [ $n -lt $1 ];do 
    echo -n "$a ";
    temp=$b;
    b=$(( $a + $b ));
    a=$temp;
    n=$(( n + 1))
done;
echo;