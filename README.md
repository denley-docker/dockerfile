个人容器环境, 内容包括：

| 主 | 子 | 孙 | 其它 |
|:---:|:---:|:---:|---|
| . |  | |合并所有，除tensorflow_src外 <font color="red">*</font>|
| ubuntu |  |  |[说明](ubuntu/README.md)|
|  | docker |  |[说明](docker/README.md) |
|  | ruby |  |[说明](ruby/README.md) <font color="red">*</font>|
|  |  | rails |[说明](ruby/rails/README.md) |
|  | nodejs |  |[说明](nodejs/README.md)安装了nvm, npm, node stable|
|  |  | gitbook |[说明](nodejs/gitbook/README.md)|
|  |  | hexo |[说明](nodejs/hexo/README.md)|
|  | python |  |[说明](python/README.md) <font color="red">*</font>|
|  |  | notebook |[说明](python/notebook/README.md)|
|  |  | tensorflow |[说明](python/tensorflow/README.md)|
|  |  | tensorflow_src |[说明](python/tensorflow_src/README.md)|

注：带"<font color="red">*</font>"的docker镜像（包括其子分支）需要在系统run后执行`source ~/.bash_profile`
  
# 注意
* 如果没有翻墙，打开[Dockerfile](ubuntu/Dockerfile)文件中的`更新源`部分注释即可加速build，缺省注释掉
* 如果手动push到hub.docker.com, 要先执行`docker login`

# 参考
* [mritd的常用dockerfile](https://github.com/mritd/dockerfile)