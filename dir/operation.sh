#!/bin/bash

# (())
val1=$((3*(5+2)))
echo "val1=$val1"

# let
let "val2=3*(5+2)"
echo "val2=$val2"

# expr
val3=`expr 3 \* \( 5 + 2 \)`
echo "val3=$val3"

# bc
val4=`echo "3*(5+2)"|bc`
echo "val4=$val4"

# bc 实现5/3浮点运算，保留3位小数
val5=`echo "scale=3; 5/3"|bc`
echo "val5=$val5"

exit 0