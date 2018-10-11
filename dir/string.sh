#!/bin/bash

str='hello world'

# 显示字符串
echo '显示字符串'
echo ${str}

# 显示字符串长度
echo '显示字符串长度'
echo ${#str}

# 提取world
echo '提取world'
echo ${str:6}

# 提取or
echo '提取or'
echo ${str:7:2}

# 删除hello
echo '删除hello'
echo ${str#hello}

# 删除world
echo '删除world'
echo ${str%world}

# 将所有的字符l替换为m
echo '将所有的字符l替换为m'
echo ${str//l/m}

exit 0
