# cp - copy files and directories 复制文件和目录

## 选项参数 -- options

    -a, --archive
            same as -dR --preserve=all
            等价于 -dR --preserve=all

    -b     like --backup but does not accept an argument
            类似于 --backup 除了不接受参数

    -d     same as --no-dereference --preserve=links
        等价于 --no-dereference --preserve=links

    -f, --force
            if an existing destination file cannot be opened, remove it and try again (this option is ignored when the -n option is also used)
            如果一个目标文件不能打开，删除它并重试

    -i, --interactive
            prompt before overwrite (overrides a previous -n option)
            覆盖前提示

    -l, --link
            hard link files instead of copying
            硬链接文件而不是复制

    -L, --dereference
            always follow symbolic links in SOURCE
            始终遵循SOURCE中的符号链接

    -n, --no-clobber
            do not overwrite an existing file (overrides a previous -i option)
            不覆盖已存在的文件

    -P, --no-dereference
            never follow symbolic links in SOURCE
            从不遵循SOURCE中的符号链接

    -p     same as --preserve=mode,ownership,timestamps
            等价于 --preserve=mode,ownership,timestamps

    --preserve[=ATTR_LIST]
            preserve the specified attributes (default: mode,ownership,timestamps), if possible additional attributes: context, links, xattr, all
            保留特殊的属性（默认的：模式，所有权，时间戳），如果可能保留额外的属性：文本，链接，xattr，全部

    -R, -r, --recursive
            copy directories recursively
            递归复制目录及其文件

    -s, --symbolic-link
            make symbolic links instead of copying
            符号链接代替复制

## 栗子 -- examples

### Copy a file to directory and file is not existing in directory 复制一个文件到

`cp 苍进空.rmvb 离散数学`

### Copy a file and make symbolic links 复制一个文件以符号链接形式

`cp 苍进空.rmvb 苍进空_link.rmvb`
