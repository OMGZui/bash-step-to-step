# cat - concatenate files and print on the standard output 连接文件和标准输出打印

## 选项参数 -- options

    -A, --show-all
            equivalent to -vET
            等价于 -vET

    -b, --number-nonblank
            number nonempty output lines, overrides -n
            非空行才打印数字， 重写 -n

    -e     equivalent to -vE
            等价于 -vE

    -E, --show-ends
            display $ at end of each line
            在每行结束处显示$

    -n, --number
            number all output lines
            每行的数字都打印出来

    -s, --squeeze-blank
            suppress repeated empty output lines
            抑制重复空行输出

    -t     equivalent to -vT
            等价于 -vT

    -T, --show-tabs
            display TAB characters as ^I
            将tab符显示为^I

## 栗子 -- examples

### number all output lines 每行的数字都打印出来

```bash
# print the file
cat log_2018.log
2018-01
2018-02
cat log_2019.log
2019-01
2019-02

# number all output lines
cat -n log_2018.log log_2019.log
    1  2018-01
    2  2018-02
    1  2019-01
    2  2019-02
```

### Append a file content to another file 将一个文件的内容添加到另一个文件

```bash
cat -n log_2018.log >> log_2019.log
cat -n log_2019.log
     1  2019-01
     2  2019-02
     3       1  2018-01
     4       2  2018-02
```
