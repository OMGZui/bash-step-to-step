# linux 中用户、组、文件

前言：在linux中一切都是文件

由于修改文本文件如此简单，Linux系统本身肯定要加以规范。这就引出了用户(组)和权限这2个概念。

> 由于一切皆为文件。所以Linux 引入了2个文件来管理用户（组）， /etc/passwd存放用户，/etc/group存放组， 然后在文件系统中的每个文件的文件头里面添加了用户和文件之间的关系信息。

```sh
用户和文件的关系只有2种， 拥有和不拥有。
组和文件的关系只有2种，拥有和不拥有
用户和组的关系只有2种， 属于和不属于
```

将这三种关系叠加，用户和文件的最终关系可以归纳为3类

```sh
1，用户拥有该文件
2，用户属于某个组， 某个组拥有该文件（即用户通过属于某组来拥有该文件）
3，用户不拥有该文件
```

下面要说明一下权限。

> 权限一共有三种读4（缩写为r),写2（缩写为w),执行1（缩写为x)

    读（缩写为r)：查看
    写（缩写为w)：修改
    执行（缩写为x)：运行

```sh
- rw- rw- r-- 1 root root  451 10月 31 2016 default.conf
- 文件类型，我们这里不需要关注
rw- 用户（缩写为u)的权限
rw- 组（缩写为g)的权限
r-- 其他用户（缩写为o)的权限

用户root可以读+写 default.conf
组root 可以读+写 default.conf

按照前面我们说的，比如shengj用户属于root组，那么它就拥有组root的所有权限，可以读+写default.conf

```

修改权限

```sh
chmod g+x default.conf 给default.conf的组加上执行x权限
chmod g-x default.conf 给default.conf的组减去执行x权限

```

用户操作

```sh
1. 增加用户
# 新增
useradd shengj
# 设置密码
passwd shengj
# 配置sudo权限
vim /etc/sudoers
找到 root    ALL=(ALL)       ALL
在下面加条  shengj  ALL=(ALL)       ALL

2. 修改用户
# 将shengj用户的登录目录改成/home/shengj，并加入root组。
usermod -d /home/shengj -G root shengj
# 将用户shengj加入到root组
gpasswd -a shengj root
# 将用户shengj从root组中移出
gpasswd -d shengj root

3. 删除用户
userdel shengj

4. 查看用户
# 查看当前登录用户
w
who
# 查看当前登录用户
whoami
# 查看单个用户信息
finger shengj
id shengj
# 查看用户登录记录
查看登录成功的用户记录
last
查看登录不成功的用户记录
lastb
# 查看所有用户
cut -d : -f 1 /etc/passwd
cat /etc/passwd |awk -F \: '{print $1}'
```

组操作

```sh
1. 创建组
groupadd  shengj

2，修改组
groupmod -n shengj2  shengj
将shengj组的名字改成shengj2

3，删除组
groupdel shengj

4，查看组
# 查看当前登录用户所在的组groups
groups shengj

# 查看所有组 
cat /etc/group

# 有的linux系统没有/etc/group文件的，这个时候看下面的这个方法
cat /etc/passwd |awk -F [:] '{print $4}' |sort|uniq | getent group |awk -F [:] '{print $1}'
这里用到一个命令是getent,可以通过组ID来查找组信息,如果这个命令没有的话,那就很难查找,系统中所有的组了.
```
