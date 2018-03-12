个人docker环境生成, 内容包括：
* ubuntu:16.04
* 更新源
* git全局配置
* docker
* docker-compose

# 使用
* docker build -t denley/ubuntu:docker .

# 说明
* 如果要创建VPN, 执行`docker run -d -p 1979:1979 oddrationale/docker-shadowsocks -s 0.0.0.0 -p 1979 -k password -m aes-256-cfb`，其中的`password`修改为自定义的密码
* 如果没有翻墙，打开L4-L5之间的注释行