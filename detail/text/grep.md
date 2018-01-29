# grep, egrep, fgrep, rgrep - print lines matching a pattern 打印符合模式的行数

## 选项参数 -- options

    -E, --extended-regexp  egrep 正则模糊匹配
            Interpret PATTERN as an extended regular expression (ERE, see below).
            将PATTERN解释为扩展的正则表达式（ERE，见下文）。

    -F, --fixed-strings  fgrep 精确字母匹配
            Interpret PATTERN as a list of fixed strings (instead of regular expressions), separated by newlines, any of which is to be matched.
            将PATTERN解释为固定字符串（而不是正则表达式）的列表，用换行符分隔，其中任何一个将被匹配。

    -r, --recursive
            Read all files under each directory, recursively, following symbolic links only if they are on the command line.  Note that if no file operand is given, grep searches the working directory.  This is equivalent  to  the -d recurse option.
            只要它们在命令行上，就可以递归地读取每个目录下的所有文件，并跟随符号链接。 请注意，如果没有给出文件操作数，grep将搜索工作目录。 这相当于 -d递归选项。

    -w, --word-regexp 精确单词匹配
            Select only those lines containing matches that form whole words.  The test is that the matching substring must either be at the beginning of the line, or preceded by a non-word constituent  character.   Similarly,  it  must be either at the end of the line or followed by a non-word constituent character.  Word-constituent characters are letters, digits, and the underscore.
            只选择包含构成整个单词的匹配的那些行。 测试是匹配子字符串必须位于行首，或者以非单字组成字符开头。 同样，它
            必须在行尾，或者跟随一个非单词组成字符。 单词组成字符是字母，数字和下划线。

    -c, --count
            Suppress normal output; instead print a count of matching lines for each input file. 
            抑制正常输出; 而是为每个输入文件打印一个匹配行数

    -n, --line-number
            Prefix each line of output with the 1-based line number within its input file.
            在每个输出行的前面加上输入文件中的从1开始的行号。

## 栗子 -- examples

### grep

`cat hello.txt | grep 'dolor'`
or
`grep 'dolor' hello.txt`

        dolor sit amet,
        foo (Lorem|dolor)
        et dolore magna
        duo dolores et ea
        ipsum dolor sit

### -E

`cat hello.txt | grep -E 'dolor'`
or
`grep -E 'dolor' hello.txt`

        dolor sit amet,
        foo (Lorem|dolor)
        et dolore magna
        duo dolores et ea
        ipsum dolor sit

### -F

`cat hello.txt | grep -F 'dolor'`
or
`grep -F 'dolor' hello.txt`

        dolor sit amet,
        foo (Lorem|dolor)
        et dolore magna
        duo dolores et ea
        ipsum dolor sit

### -w

`cat hello.txt | grep -w 'dolor'`
or
`grep -w 'dolor' hello.txt`

        dolor sit amet,
        foo (Lorem|dolor)
        ipsum dolor sit

### -c

`cat hello.txt | grep -w 'dolor' -c`

        3

### -n

`cat hello.txt | grep -w 'dolor' -n`

        2:dolor sit amet,
        7:foo (Lorem|dolor)
        19:ipsum dolor sit
