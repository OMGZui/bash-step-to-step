## bash 跟着敲

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






[1]:http://omgzui.pub/linux