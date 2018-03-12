个人docker环境生成, 内容包括：
* 基本配置（Dockerfile)
  - ubuntu:16.04
  - 更新源
  - git全局配置
* docker（Dockerfile_docker)
  - docker
  - docker-compose

# 使用
## 构建
* `docker build -t denley/ubuntu:base .`
* `docker build -t denley/ubuntu:docker -f Dockerfile_docker .`

## 运行
`docker run -it denley/ubuntu:<tag_name> bash`

## 上传

```
docker login
docker push denley/ubuntu:<tag_name>
```
## 下载
`docker pull denley/ubuntu:<tag_name>`

# 说明
* 创建VPN

```
 # `password`可自定义为个人密码
 docker run -d -p 1979:1979 oddrationale/docker-shadowsocks -s 0.0.0.0 -p 1979 -k password -m aes-256-cfb
```

* 如果没有翻墙，打开L4-L5之间的注释行