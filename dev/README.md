开发环境容器

为了支持各版本自由切换，一般体积比较大， 使用时加前缀`dev_`, 如`rails`所在的镜像为：`denley/dev_rails`: 

| 主 | 子 | 孙 | 其它 |
|:---:|:---:|:---:|---|
|full |  | |合并所有，除tensorflow_src外 <font color="red">*</font>|
|ubuntu|  |  |[说明](dev/ubuntu/README.md)|
|  | docker |  |[说明](dev/docker/README.md) |
|  | ruby |  |[说明](dev/ruby/README.md) <font color="red">*</font>|
|  |  | rails |[说明](dev/rails/README.md) |
|  | nodejs |  |[说明](dev/nodejs/README.md)|
|  |  | gitbook |[说明](dev/gitbook/README.md)|
|  |  | hexo |[说明](dev/hexo/README.md)|
|  | python |  |[说明](dev/python/README.md) <font color="red">*</font>|
|  |  | notebook |[说明](dev/notebook/README.md)|
|  |  | tensorflow |[说明](dev/tensorflow/README.md)|
|  |  | tensorflow_src |[说明](dev/tensorflow_src/README.md)|

注: 带"<font color="red">*</font>"的docker镜像（包括其子孙镜像）需要在系统run后执行`source ~/.bash_profile`