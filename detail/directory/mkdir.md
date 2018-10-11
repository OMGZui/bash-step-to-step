# mkdir - make directories 新建目录

## 选项参数 -- options

    -m, --mode=MODE
            set file mode (as in chmod), not a=rwx - umask
            设定权限（类似于chmod），不是a=rwx这种方式

    -p, --parents
            no error if existing, make parent directories as needed
            如果没有错误，将会以递归的形式创建目录

    -v, --verbose
            print a message for each created directory
            以信息的形式打印出每一个创建的目录

## 栗子 -- examples

### Create a empty directory 创建一个空目录

`mkdir php`

### Create directories with recursion 递归的创建目录

`mkdir -p php/laravel`

### Create a directory with permissions of 777 创建一个权限为777的目录

`mkdir -m 777 js`

### Print a message for each created directory 以信息的形式打印出每一个创建的目录

`mkdir -vp program/web/js/vue`
