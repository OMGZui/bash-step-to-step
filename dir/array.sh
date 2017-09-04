#!/bin/bash

array=(10 20 30 40 50)

# 显示数组中所有元素
echo '显示数组中所有元素'
echo ${array[*]}
echo ${array[@]}

# 显示数组第2项
echo '显示数组第2项'
echo ${array[1]}

# 显示数组长度
echo '显示数组长度'
echo ${#array[@]}

# 输出数组的第1-3项
echo '输出数组的第1-3项'
echo ${array[@]:0:3}

# 将数组中的0替换成1
echo '将数组中的0替换成1'
echo ${array[@]/0/1}

# 删除数组第2项元素  
# 说明：
# unset仅仅只清除array[1]的值，并没有将array[1]删除掉
echo '删除数组第2项元素'
unset array[1]
echo ${array[@]}

