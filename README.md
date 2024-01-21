
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
## 文件存储
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