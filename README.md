
## 安装命令
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