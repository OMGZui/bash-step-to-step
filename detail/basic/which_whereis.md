# which_whereis

## which - locate a command 定位命令

    -a     print all matching pathnames of each argument
            打印出所有匹配路径名字的每一个参数

## whereis - locate the binary, source, and manual page files for a command 定位二进制，源，和手册页面文件命令

    -b     Search for binaries.
            搜索二进制文件

    -m     Search for manuals.
            搜索手册文件

    -s     Search for sources.
            搜索源文件

## 栗子 -- examples

### Search php not arguments 不带参数搜索php

```bash

# whcih php
/usr/bin/php
# whereis php
php: /usr/bin/php /usr/bin/php7.1 /usr/lib/php /etc/php /usr/include/php /usr/share/php /usr/share/php7.1-curl /usr/share/php7.1-opcache /usr/share/php7.1-xml /usr/share/php7.1-zip /usr/share/php7.1-common /usr/share/php7.1-mbstring /usr/share/php7.1-json /usr/share/php7.1-gd /usr/share/php7.1-intl /usr/share/php7.1-mysql /usr/share/php7.1-readline /usr/share/php7.1-mcrypt /usr/share/php7.1-bcmath /usr/share/php7.1-sqlite3 /usr/share/php7.1-pgsql /usr/share/man/man1/php.1.gz
```

### Search php has arguments 带参数搜索php

```bash
# whcih -a php
/usr/bin/php
# whereis -b php
php: /usr/bin/php /usr/bin/php7.1 /usr/lib/php /etc/php /usr/include/php /usr/share/php /usr/share/php7.1-curl /usr/share/php7.1-opcache /usr/share/php7.1-xml /usr/share/php7.1-zip /usr/share/php7.1-common /usr/share/php7.1-mbstring /usr/share/php7.1-json /usr/share/php7.1-gd /usr/share/php7.1-intl /usr/share/php7.1-mysql /usr/share/php7.1-readline /usr/share/php7.1-mcrypt /usr/share/php7.1-bcmath /usr/share/php7.1-sqlite3 /usr/share/php7.1-pgsql
# whereis -m php
php: /usr/share/man/man1/php.1.gz
# whereis -s php
php:
```
