# https-helper

搭建 https 网站助手，基于 acme 获取 tls 证书

## 使用方法

1. 安装 acme

```
git clone https://github.com/acmesh-official/acme.sh.git
cd ./acme.sh
./acme.sh --install -m my@example.com
```

执行如下指令，判断是否安装成功

```
acme.sh -h
```

2. 克隆此仓库

```
git clone git@github.com:FIOTS/https-helper.git
```

3. 创建快速执行软连接和存储目录

```
ln -s ~/https-helper/getTLS.sh ~/getTLS.sh
sudo mkdir -p  /root/www/tls
```

4. 修改 https-helper 中的 Domains （需要 SSL/TLS 的域名）

5. nginx 添加 CA 文件校验配置

```
location /.well-known/ {
  root /var/www/html/;
}
```

6. 指令 getTLS.sh 获取证书认证的公私钥

```
cd ~
./getTLS.sh
```
