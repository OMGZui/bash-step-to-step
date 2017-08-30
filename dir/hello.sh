#!/bin/bash

# 循环输出0-10
a=0
while [ $a -le 10 ] 
do
    echo $a
    let a++
done