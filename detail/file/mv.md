# mv - move (rename) files 移动或重命名文件

## 选项参数 -- options

    --backup[=CONTROL]
            make a backup of each existing destination file
            对每个存在的目标文件做备份

    -b     like --backup but does not accept an argument
            类似 --backup，除了不支持参数

    -f, --force
            do not prompt before overwriting
            覆盖前没有提示

    -i, --interactive
            prompt before overwrite
            覆盖前有提示

## 栗子 -- examples

### Rename file 重命名文件

`mv 苍井空.rmvb 爱情教程.rmvb`

### Move file 移动文件

`mv 苍井空.rmvb 离散数学`

### Prompt before overwriting 覆盖前有提示

`mv -i 苍井空.rmvb 爱情教程.rmvb`

### Do not prompt before overwriting 覆盖前没有提示

`mv -f 苍井空.rmvb 爱情教程.rmvb`

### Make a backup of each existing destination file 对每个存在的目标文件做备份

`mv -b 苍井空.rmvb 爱情教程.rmvb`
