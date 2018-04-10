个人容器集合

# 环境
* [开发环境](dev/README.md)
* [生产环境](stable/README.md)

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