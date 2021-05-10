# 简介
mimiproject是一个基于cmake的自动化构建和包管理工具

使用方法参考libdev,将mimiproject作为子系统添加到新仓库，然后在mimiproject的同级目录新建src/package和src/init.

在src/prckage中添加库的源文件, 如mimilib, 在src/init中新建文件夹并添加main.c或者main.cpp

如：

``` 
libdev
|-------mimiproject
|-------src
    |-------package 
    |        |---mimilib
    |-------init
            |---linux
            |    |---main.c
            |---test
                 |---main.cpp
```
