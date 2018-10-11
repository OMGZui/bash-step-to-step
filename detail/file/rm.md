# rm - remove files or directories 删除文件或目录

## 选项参数 -- options

    -f, --force
            ignore nonexistent files, never prompt
            忽略不存在的文件，没有提示

    -i     prompt before every removal 删除每个文件之前提示

    -r, -R, --recursive
            remove directories and their contents recursively
            递归的删除目录及其文件

    -v, --verbose
        explain what is being done
        解释正在做什么

## 栗子 -- examples

    By  default,  rm  does not remove directories.  Use the --recursive (-r or -R) option to remove each listed directory, too, along with all of its contents.
    rm默认不会删除目录，可以使用--recursive (-r or -R)参数删除每个列出来的目录，同时删除其文件

### Remove a file and prompt 删除文件，并提示

`rm -i 苍井空.rmvb`

### Force remove a file 强制删除文件，不提示

`cp 苍井空.rmvb 苍井空2.rmvb && rm -f 苍井空.rmvb`

### Remove a directory, along with all of its contents. 删除一个目录，包括其中的所有文件

`cp 离散数学 离散数学2 && rm -rf 离散数学`

### Remove all files 删除所有文件

    Please think twice, unless you are not want to live.
    三思而后行

`rm -rf /`
