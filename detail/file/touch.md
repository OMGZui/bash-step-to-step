# touch - change file timestamps 改变文件的时间戳

## 选项参数 -- options

    -a     change only the access time
            只改变访问时间

    -c, --no-create
            do not create any files
            不创建任何文件

    -d, --date=STRING
            parse STRING and use it instead of current time
            解析字符串并且用它代替当前时间

    -m     change only the modification time
            只改变修改时间

    -r, --reference=FILE
            use this file's times instead of current time
            使用该文件的时间而不是当前时间

    -t STAMP
            use [[CC]YY]MMDDhhmm[.ss] instead of current time
            使用[[CC]YY]MMDDhhmm[.ss] 格式代替当前时间

## 栗子 -- examples

### Create a not existed file of empty 创建一个不存在的空文件

```bash
touch 2018步兵排名.md 2018骑兵排名.md
-rw-r--r--   1 shengj  staff     0B  1 17 11:06 2018步兵排名.md
-rw-r--r--   1 shengj  staff     0B  1 17 11:06 2018骑兵排名.md
```

### Use this file's times instead of current time 使用该文件的时间而不是当前时间

```bash
# update file timestamps
touch 2018步兵排名.md
-rw-r--r--   1 shengj  staff     0B  1 17 11:08 2018步兵排名.md

# Use the first timestamps update the second file
touch -r 2018步兵排名.md 2018骑兵排名.md
-rw-r--r--   1 shengj  staff     0B  1 17 11:08 2018步兵排名.md
-rw-r--r--   1 shengj  staff     0B  1 17 11:08 2018骑兵排名.md

```

### use [[CC]YY]MMDDhhmm[.ss] instead of current time 使用[[CC]YY]MMDDhhmm[.ss] 格式代替当前时间

```bash
touch -t 201801171000.20 2018步兵排名.md
-rw-r--r--   1 shengj  staff     0B  1 17 10:00 2018步兵排名.md
```
