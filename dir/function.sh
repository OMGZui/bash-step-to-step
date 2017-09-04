#!/bin/bash

# 编辑一个函数foo：打印foo的输入参数的总数，并输入每个参数和参数对应的序号。
function foo()
{
    # 定义局部变量i
    local i=0 
    # 定义局部变量total=传入foo的参数总数
    local total=$#
    # 输出参数总数
    echo "total param =$total"
    # 输出传入foo的每一个参数
    for val in $@
    do
        ((i++))
        echo "$i -- val=$val"
    done

    # 返回参数总数
    return $total
}

foo
foo param1 param2 param3
# 输出foo param1 param2 param3的返回值
echo "return value=$?"

exit 0
