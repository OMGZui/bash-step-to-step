# chmod - change file mode bits 改变文件模式位

    chmod changes the file mode bits of each given file according to mode, which can be either a symbolic representation of changes to make, or an octal number representingthe bit pattern for the new mode bits.
    chmod根据模式改变每个给定文件的文件模式位，该模式可以是对所做改变的符号表示，也可以是表示新模式位的位模式的八进制数。

可以参考[linux-user-group-file][1]

## 选项参数 -- options

    -R, --recursive
            change files and directories recursively
            递归的改变文件和目录

## 栗子 -- examples

### -R

`chmod -R 777 storage/`

[1]:../../linux-user-group-file.md