# 简介
mimiproject是一个基于cmake的自动化构建和包管理工具

使用方法: 将mimiproject作为子系统添加到新仓库，然后在mimiproject的同级目录新建src/package和src/boot,src/test.

在src/prckage中添加源码库, 在src/boot和src/test中新建文件夹并添加main.c或者main.cpp

test中的可执行文件将会在make后自动执行


如：

``` 
mimiscript
  |
  |___mimiproject
  |
  |___src
        |___package 
        |      |
        |      |___mimilib
        |      
        |___boot
        |     |___demo01-led
        |     |     |___main.c
        |     |
        |     |
        |     |___demo02-uart
        |           |___main.c
        |___test
              |___mainTest
	            |___main.cpp
```
## step1: 安装编译链
```
sudo apt install -y clang llvm cmake zlib1g-dev
```
## step2: 初始化
``` shell
sh init.sh
```
## step3: 编译
``` shell
sh make.sh
```
## step4: 运行
``` shell
bin/xxx.bin
```

## 清除缓存
``` shell
sh clear.sh
```

