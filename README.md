个人docker环境生成, 内容包括：

| 主 | 子 | 孙 |说明|
|:---:|:---:|:---:|---|
| ubuntu |  |  |[详见](ubuntu/README.md)|
|  | docker |  |[详见](docker/README.md) |
|  | ruby |  |[详见](ruby/README.md)<font color="red">*</font>|
|  |  | rails |[详见](rails/README.md) |
|  | nodejs |  |[详见](nodejs/README.md)安装了nvm, npm, node stable|
|  |  | gitbook |[详见](gitbook/README.md)|
|  |  | hexo |[详见](hexo/README.md)|
|  | python |  |[详见](python/README.md)<font color="red">*</font>|
|  |  | notebook |[详见](notebook/README.md)|
|  |  | tensorflow |[详见](tensorflow/README.md)|
|  |  | tensorflow_src |[详见](tensorflow_src/README.md)|
| full |  | |合并了除tensorflow_src外的所有孙分支<font color="red">*</font>|

注：带"<font color="red">*</font>"的docker镜像（包括其子分支）需要在系统run后执行`source ~/.bash_profile`
  
# 注意
* 如果没有翻墙，打开[Dockerfile](ubuntu/Dockerfile)文件中的`更新源`部分注释即可加速build，缺省注释掉

# 参考
* [mritd的常用dockerfile](https://github.com/mritd/dockerfile)