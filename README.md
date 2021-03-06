## Deprecated. Recommend 蓝灯

## 说明
供墙内用户使用google youtube 都可以，有问题发issue

## 使用方法
- 1首先安装好[docker](https://www.docker.com/products/docker#/mac)
- 2启动dns服务
```
# 直接执行命令，不用拉取项目
docker run -d --name dns -p 53:53/tcp -p 53:53/udp --restart always --cap-add=NET_ADMIN firesh/dns --log-facility=-
```
- 3设置dns，本机设置dns为127.0.0.1即可。

## Build
```
docker build -t dns . &&\
docker run -d --name dns -p 53:53/tcp -p 53:53/udp --restart always --cap-add=NET_ADMIN firesh/dns --log-facility=-
```

## 更新日志：
```
20161103: google，youtube的老IP已无法访问，更新了新IP。已同步发到docker hub镜像。
20161121: google IP已经不稳定，更换新IP。
20170307: 更新github使用的amazon s3地址
20170308: 更新fb地址, 移除某cdn不可用的地址
20170309: 增加gist.github.com地址
20170314: 移除fonts.googleapis.com地址, 官方有国内ip的cdn
20170627: 更新googleusercontents ip address
20170706: 原google IP 不可用，已更新
20170925: 原google IP 不可用，已更新
```

## 重新部署最新的dns服务步骤
```
docker pull firesh/dns && \
docker rm -f dns && \
docker run -d --name dns -p 53:53/tcp -p 53:53/udp --restart always --cap-add=NET_ADMIN firesh/dns --log-facility=-
```

## 申明
- IP封一个少一个，仅供技术人员自行使用，请勿发布公网使用。
- dnsmasq配置来源：
[https://github.com/googlehosts/hosts](https://github.com/googlehosts/hosts)
[https://github.com/fengixng/google-hosts](https://github.com/fengixng/google-hosts)
