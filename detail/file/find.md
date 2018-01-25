# find - search for files in a directory hierarchy 搜索目录层次结构中的文件

## 选项参数 -- options

    -name   按照文件名查找文件。
    -perm   按照文件权限来查找文件。
    -user   按照文件属主来查找文件。
    -group  按照文件所属的组来查找文件。
    -type  查找某一类型的文件
        b - 块设备文件。
        d - 目录。
        c - 字符设备文件。
        p - 管道文件。
        l - 符号链接文件。
        f - 普通文件。
    -exec  参数后面跟的是command命令，以分号结束，花括号代表前面find查找出来的文件名。
    -newer file1 ! file2  查找更改时间比文件file1新但比文件file2旧的文件。
    -size n：[c] 查找文件长度为n块的文件，带有c时表示文件长度以字节计。-depth：在查找文件时，首先查找当前目录中的文件，然后再在其子目录中查找。
## 栗子 -- examples

### Find php in root directory 在根目录中查找php

`find / -name php -print`

### -exec

`find . -type f -exec ls -l {} \;` 列出类型为文件的所有文件且格式化输出

    -rw-r--r--  1 shengj  staff  1387  1 18 10:46 ./cat.md
    -rw-r--r--  1 shengj  staff  2179  1 16 13:58 ./cp.md
    -rw-r--r--  1 shengj  staff  792  1 25 16:06 ./find.md
    -rw-r--r--  1 shengj  staff  3291 12 29 10:41 ./ls.md
    -rw-r--r--  1 shengj  staff  1938  1 19 10:17 ./more_less_head_tail.md
    -rw-r--r--  1 shengj  staff  998  1 15 16:00 ./mv.md
    -rw-r--r--  1 shengj  staff  1747  1 18 10:33 ./touch.md

### -perm

`find . -perm 644 -print` 权限是644

    ./cat.md
    ./cp.md
    ./find.md
    ./ls.md
    ./more_less_head_tail.md
    ./mv.md
    ./touch.md

### -type

`find . ! -type d -print` 类型不是文件

    ./cat.md
    ./cp.md
    ./find.md
    ./ls.md
    ./more_less_head_tail.md
    ./mv.md
    ./touch.md

### -size 

`find . -size +1024c -print` 大于1kb

    ./cat.md
    ./cp.md
    ./find.md
    ./ls.md
    ./more_less_head_tail.md
    ./touch.md
