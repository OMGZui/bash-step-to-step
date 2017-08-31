# bash 跟着敲

## 命令行

### 1. 基本操作

* export

展示全部的环境变量，如果你想获取某个特殊的变量，用 `echo $变量名`
![](./img/export.jpg)
![](./img/echo.jpg)

* whatis

展示用户命令，系统调用、库函数等
![](./img/whatis.png)

* whereis

搜索可执行文件、源文件
![](./img/whereis.png)

* which

在环境变量中搜索可执行文件，并打印完整路径
![](./img/which.jpg)

* clear

清空屏幕
![](./img/clear.png)

### 2. 文件操作

* cat

在屏幕上显示文本文件
![](./img/cat.jpg)

* chmod

可以改变文件和目录的读、写、执行权限
[linux 中的用户、组、文件][1]

* cp

复制文件
![](./img/copy.jpg)

* diff

比较文件，我在上面复制的文件中加了一行diff
![](./img/diff.jpg)

* find

查找文件，可以通过正则来查
![](./img/find.jpg)

* head

查看文件前10行
![](./img/head.jpg)

* ls

显示所有文件，`-l`显示长格式化 `-a`显示包括隐藏文件
![](./img/ls.jpg)

* mv

移动文件，同时也可以重命名文件
![](./img/mv.jpg)

* rm

删除文件，`-r`删除目录 `-f`强制删除
![](./img/rm.jpg)

* touch

创建新文件
![](./img/touch.jpg)

### 3. 文本操作

* awk

非常有用的一个文本处理命令，逐行运行，默认使用空格分割，`-F`表示分割的样式
![](./img/etc:passwd.jpg)
![](./img/awk.jpg)

* grep

匹配正则表达式的文本行，并输出，`-E`正则模糊匹配 `-F`精确字母匹配 `-w`精确单词匹配
![](./img/grep.jpg)
![](./img/grep_w.jpg)

* sed

正则替换
![](./img/sed.jpg)

* sort

排序
![](./img/sort.jpg)

* wc

统计文本行数，单词数，字符数
![](./img/wc.jpg)

### 3. 目录操作

* cd

进入目录

* mkdir

创建目录

* pwd

当前目录的路径
![](./img/mkdir.jpg)

### 4. SSH,系统信息，网络操作

* cal

月历
![](./img/cal.jpg)

* date

当前日期和时间
![](./img/date.jpg)

* df

磁盘使用情况

* du

文件或目录使用情况
![](./img/du.jpg)

* ps

列出你的进程
![](./img/ps.jpg)

* ssh

远程连接
![](./img/ssh.jpg)

* top

列出当然活动进程
![](./img/top.jpg)

## 语法

### 1 条件判断

#### 1.1 test判断语句

test是关键字，表示判断；
EXPRESSION是被判断的语句。
![](./img/testEx.jpg)
`echo $?` 输出判断结果，0表示成功，其他表示失败。
![](./img/test.jpg)

[1]:http://omgzui.pub/linux