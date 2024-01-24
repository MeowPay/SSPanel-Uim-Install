# SSPanel-Uim版本： Jan 17, 2024
## 使用
如果没有docker环境，请先安装 docker 及 compose 扩展
``` bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```
clone项目并执行安装脚本
```
git clone https://github.com/Meowpay/SSPanel-Uim-Install.git sspanel
cd sspanel 
sh ./install.sh
```
## 注意事项
SSpanel似乎必须要TLS才可以运行，否则cookie无效  
解决办法：  
覆盖conf.d/TLS 里的内容到 conf.d/
```
mv conf.d/TLS/* conf.d/
```
修改域名及证书路径
```
vim conf.d/sspanel.conf
```
重启Nginx
```
docker compose restart nginx
```
## 文件存储
Nginx 配置在 conf.d 目录下  
数据全部在 data 目录下  
SSPanel-Uim 在当前目录下

## 启动与停止
```
./start.sh
```
```
./stop.sh
```
## 备份
直接打包整个文件夹即可

## 迁移
```
docker compose down
rsync -avz `pwd`/ <remote>/
```

### 个人测试使用，用于生产环境时请确保掌握相关技能 
### 有疑问及反馈欢迎联系 [https://t.me/MeowPayCN](https://t.me/MeowPayCN)
#### 捐赠作者一杯咖啡☕️
TRX、USDT-TRC20 打赏地址：
```
TE74XjX6KmGhJNnEThRPnzc46hxM128gdg
```
XMR(Monero) 打赏地址：
```
88iFm6z81w1i5u6TcXv1xzSn71kKLiukYVeNJ5kUVr7vf8GYryuBdCrWXH9mkhzZSD1KZYHq5w59xCJ5ACogRKnQL7ZApLY
```