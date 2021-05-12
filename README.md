# 简介
mimiproject是一个基于cmake的自动化构建和包管理工具

使用方法参考libdev,将mimiproject作为子系统添加到新仓库，然后在mimiproject的同级目录新建src/package和src/init.

在src/prckage中添加源码库, 如mimilib, 在src/init中新建文件夹并添加main.c或者main.cpp

如：

``` 
libdev
  |
  |___mimiproject
  |
  |___src
        |___package 
        |      |
        |      |___mimilib
        |      
        |___init
              |___linux
              |     |___main.c
              |
              |___test
                    |___main.cpp
```

## 构建
```
sh make.sh
```

## 清除缓存
```
sh clear.sh
```

## 更新并提交工程(开发者使用，会自动清除缓存)
```
sh update.sh
```

# 分支说明

## master分支
稳定的分支，默认使用clang+cmake工具链

## gcc分支
使用gcc+cmake工具链的最新分支

## clang分支
使用clang+cmake工具链的最新分支