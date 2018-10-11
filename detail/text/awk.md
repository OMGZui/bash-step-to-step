# awk - pattern scanning and text processing language 正则浏览和文本处理语言

## 选项参数 -- options

    -F fs or --field-separator fs
    指定输入文件折分隔符

    -v var=value or --asign var=value
    赋值一个用户定义变量

## 栗子 -- examples

### print 必须以单引号('')包起来

- $0 代表全部行
- $n 代表第n行

`ls -al | awk '{print $5,$9}'`

    578 .git
    1063 LICENSE
    13316 README.md
    272 detail
    544 dir
    314 hello.txt
    1292 img
    2346 index.php
    3080 linux-user-group-file.md
    59791 ssr.sh

### -F 相当于 内置FS 分割字符

`cat /etc/passwd | awk -F ':' '{print $1}'`
or
`cat /etc/passwd | awk '{FS=":"} {print $1}'`

    root
    daemon
    bin
    sys
    man
    mail
    proxy
    www-data
    nobody
    sshd
    laradock
    ...

### -v 设置变量

`ls -al | awk -v a=10000 '{print $2,$2+a}'`

    208 10208
    13 10013
    4 10004
    1 10001
    17 10017
    1 10001
    1 10001
    8 10008
    16 10016
    1 10001
    38 10038
    1 10001
    1 10001
    1 10001

- BEGIN{ 这里面放的是执行前的语句 }
- END {这里面放的是处理完所有的行后要执行的语句 }

`ls -al | awk '{sum+=$6} END {print sum}'`

    71
