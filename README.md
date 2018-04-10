个人容器集合

# 说明
## 开发环境
位于`dev`目录下，主要用于开发环境，为了支持各版本自由切换，体积可能比较大， 使用时加前缀`dev_`, 如`rails`所在的镜像为：`denley/dev_rails`: 

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

## 生产环境
位于`stable`目录下，主要用于生产环境，一般体积比较小，方便部署，使用时形如：`denley/rails`

# 使用
```shell
 # 构建
 docker build -t denley/<proj_name>:<tag_name> .

 # 运行
 docker run -it denley/<proj_name>:<tag_name> bash

 # 上传 
 docker login
 docker push denley/<proj_name>:<tag_name>

 # 下载
 docker pull denley/<proj_name>:<tag_name>
```
  
# 注意
* 如果没有翻墙，打开[Dockerfile](ubuntu/Dockerfile)文件中的`更新源`部分注释即可加速build
* 使用[镜像加速器](https://www.daocloud.io/mirror#accelerator-doc): http://39e5c26c.m.daocloud.io, 加快下载速度

# 参考
* [mac下docker安装](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac)
* [mritd的常用dockerfile](https://github.com/mritd/dockerfile)