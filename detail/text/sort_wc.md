# sort_wc

## sort - sort lines of text files 文本文件行排序

## wc - print newline, word, and byte counts for each file 打印每个文件的行数，单词数和字节数

## 选项参数 -- options

    一般不需要

## 栗子 -- examples

```bash
root@ed3c7a4eb95a:/var/www/_bash# cat hello.txt
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
```

### sort

```bash
root@ed3c7a4eb95a:/var/www/_bash# cat hello.txt | sort
or
root@ed3c7a4eb95a:/var/www/_bash# sort hello.txt

accusam et justo
aliquyam erat, sed
amet.
consetetur
diam voluptua. At
dolor sit amet,
duo dolores et ea
eirmod tempor
et dolore magna
foo (Lorem|dolor)
invidunt ut labore
ipsum dolor sit
kasd gubergren,
Lorem ipsum
no sea takimata
rebum. Stet clita
sadipscing elitr,
sanctus est Lorem
sed diam nonumy
vero eos et
```

### wc

```bash

root@ed3c7a4eb95a:/var/www/_bash# wc hello.txt
 21  52 315 hello.txt
root@ed3c7a4eb95a:/var/www/_bash# cat hello.txt | wc
     21      52     315
```
