#!/bin/bash

echo -n "你单身吗？(y/n)"

read val

case $val in
Y|y)
echo "我们约起来吧"
;;
N|n)
echo "不约，再见"
;;
*)
echo "输入有误"
;;
esac

exit 0