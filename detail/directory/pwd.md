# pwd - print name of current/working directory 打印当前工作目录的完整路径

## 选项参数 -- options

- -L, --logical 逻辑路径  默认的
        use PWD from environment, even if it contains symlinks
        在当前环境使用pwd，包括符号连接

- -P, --physical 物理路径
        avoid all symlinks
        忽略全部的符号连接

## 栗子 -- examples

```bash
root@ed3c7a4eb95a:/var/www/laravel5# cd public/
root@ed3c7a4eb95a:/var/www/laravel5/public# l
total 32
drwxr-xr-x 11 root root  374 Dec 20 20:44 ./
drwxr-xr-x 31 root root 1054 Dec 21 09:43 ../
drwxr-xr-x  3 root root  102 Dec  4 16:06 css/
-rw-r--r--  1 root root 6148 Dec  6 15:21 .DS_Store
-rw-r--r--  1 root root 1035 Dec 20 20:44 favicon.ico
-rw-r--r--  1 root root  597 Dec  4 16:06 .htaccess
-rw-r--r--  1 root root 1823 Dec 11 16:22 index.php
drwxr-xr-x  3 root root  102 Dec  4 16:06 js/
-rw-r--r--  1 root root   24 Dec  4 16:06 robots.txt
lrwxrwxrwx  1 root root   36 Dec  5 22:48 storage -> /var/www/laravel5/storage/app/public/
-rw-r--r--  1 root root  914 Dec  4 16:06 web.config
root@ed3c7a4eb95a:/var/www/laravel5/public# cd storage
root@ed3c7a4eb95a:/var/www/laravel5/public/storage# pwd
/var/www/laravel5/public/storage
root@ed3c7a4eb95a:/var/www/laravel5/public/storage# pwd -L
/var/www/laravel5/public/storage
root@ed3c7a4eb95a:/var/www/laravel5/public/storage# pwd -P
/var/www/laravel5/storage/app/public
root@ed3c7a4eb95a:/var/www/laravel5/public/storage# pwd
/var/www/laravel5/public/storage
```
