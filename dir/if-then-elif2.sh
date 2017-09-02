#!/bin/bash

# 提示用户输入一个值
echo -n "请输入一个数字："

# 保存用户输入的值到num中 
read num

if [ "$num" -gt 0 ];then
echo '正数'
elif [ "$num" -lt 0 ];then
echo '负数'
else
echo '零'
fi

exit 0