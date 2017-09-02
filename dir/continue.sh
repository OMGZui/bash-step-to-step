#!/bin/bash

# 设置起始值为0
val=0

while [ "$val" -le "10" ]
do
if [ "$val" -eq "5" ];then
# 如果val=5，则将数值加2
((val=$val+2))
continue;
else
# 输出数值
echo "val=$val"
# 将数值加1
((val++))
fi 
done

exit 0