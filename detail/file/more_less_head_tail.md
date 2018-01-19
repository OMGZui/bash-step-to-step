# output the file to screen 输出文件到屏幕

## more - file perusal filter for crt viewing 以crt形式查看的文件读取过滤器

功能类似 cat ，cat命令是整个文件的内容从上到下显示在屏幕上。 more会以一页一页的显示方便使用者逐页阅读，并加载整个文件

## less - opposite of more 与more命令相反，其实不是的，拥有了更多特性

功能类似 more，但是比more更强大，具有缓冲区，并不加载整个文件

## head - output the first part of files 输出文件的前一部分

默认显示文件的前10行，`-c 显示字节数`,`-n 显示行数`

## tail - output the last part of files 输出文件的后一部分

默认显示文件的后10行，`-c 显示字节数`,`-n 显示行数`

## 栗子 -- examples

```bash
➜  bash git:(master) ✗ more hello.txt
Lorem ipsum
dolor sit amet,
consetetur
sadipscing elitr,
sed diam nonumy
eirmod tempor
foo (Lorem|dolor)
invidunt ut labore
et dolore magna
aliquyam erat, sed
diam voluptua. At
vero eos et
accusam et justo
duo dolores et ea
rebum. Stet clita
kasd gubergren,
no sea takimata
sanctus est Lorem
ipsum dolor sit
amet.

➜  bash git:(master) ✗ less hello.txt
Lorem ipsum
dolor sit amet,
consetetur
sadipscing elitr,
sed diam nonumy
eirmod tempor
foo (Lorem|dolor)
invidunt ut labore
et dolore magna
aliquyam erat, sed
diam voluptua. At
vero eos et
accusam et justo
duo dolores et ea
rebum. Stet clita
kasd gubergren,
no sea takimata
sanctus est Lorem
ipsum dolor sit
amet.
hello.txt (END)

➜  bash git:(master) ✗ head hello.txt
Lorem ipsum
dolor sit amet,
consetetur
sadipscing elitr,
sed diam nonumy
eirmod tempor
foo (Lorem|dolor)
invidunt ut labore
et dolore magna
aliquyam erat, sed

➜  bash git:(master) ✗ tail hello.txt
diam voluptua. At
vero eos et
accusam et justo
duo dolores et ea
rebum. Stet clita
kasd gubergren,
no sea takimata
sanctus est Lorem
ipsum dolor sit
amet.
```
