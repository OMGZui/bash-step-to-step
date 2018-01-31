# sed - stream editor for filtering and transforming text 流编辑器用于过滤和转换文本

## 选项参数 -- options

    a text   Append text, which has each embedded newline preceded by a backslash.
    附加文本，每个嵌入的换行符都带有反斜杠。
    c text   Replace the selected lines with text, which has each embedded newline preceded by a backslash.
    替换选择的文本行，每个嵌入的换行符都带有反斜杠。
    i text   Insert text, which has each embedded newline preceded by a backslash.
    插入文本，每个嵌入的换行符都带有反斜杠。
    d      Delete pattern space.  Start next cycle.
    删除匹配的空间，开始下一个生命周期
    s/regexp/replacement/
    正则匹配
        Attempt to match regexp against the pattern space.  If successful, replace that portion matched with replacement.  The replacement may contain the special character & to refer to that portion of the pattern space whichmatched, and the special escapes \1 through \9 to refer to the corresponding matching sub-expressions in the regexp.
        尝试匹配模式空间的正则表达式。 如果成功，则替换与替换相匹配的部分。 替换可以包含特殊字符＆来引用匹配的模式空间的部分，以及特殊的转义符\ 1到\ 9来引用正则表达式中相应的匹配子表达式。

## 栗子 -- examples

```bash
    root@ed3c7a4eb95a:/var/www/_bash# nl hello.txt
        1   Lorem ipsum
        2   dolor sit amet,
        3   consetetur
        4   sadipscing elitr,
```

### a sed '2a 你好'

```bash
    root@ed3c7a4eb95a:/var/www/_bash# nl hello.txt | sed '2a 你好'
        1   Lorem ipsum
        2   dolor sit amet,
    你好
        3   consetetur
        4   sadipscing elitr,
```

### c sed '2c 你好'

```bash
    root@ed3c7a4eb95a:/var/www/_bash# nl hello.txt | sed '2c 你好'
        1   Lorem ipsum
    你好
        3   consetetur
        4   sadipscing elitr,

```

### i sed '2i 你好'

```bash
    root@ed3c7a4eb95a:/var/www/_bash# nl hello.txt | sed '2i 你好'
        1   Lorem ipsum
    你好
        2   dolor sit amet,
        3   consetetur
        4   sadipscing elitr,

```

### d sed '2d'

```bash
    root@ed3c7a4eb95a:/var/www/_bash# nl hello.txt | sed '2d'
        1   Lorem ipsum
        3   consetetur
        4   sadipscing elitr,

```

### s sed 's/[a-z,A-Z]/1/g'

```bash
    root@ed3c7a4eb95a:/var/www/_bash# nl hello.txt | sed 's/[a-z,A-Z]/1/g'
        1   11111 11111
        2   11111 111 11111
        3   1111111111
        4   1111111111 111111

    root@ed3c7a4eb95a:/var/www/_bash# sed 's/[a-z,A-Z]/1/g' hello.txt > 111.txt
```
