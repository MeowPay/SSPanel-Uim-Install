# SSPanel-Uim版本： Jan 17, 2024
git clone -b dev https://github.com/Anankke/SSPanel-Uim
cd SSPanel-Uim
git reset --hard 6913425a23e3302122eb8dcfe86afada611bec9c
cd -
# Dev
# git clone https://github.com/Meowpay/SSPanel-Uim-Dev.git SSPanel-Uim
# 设置权限
chmod +x *.sh
chmod -R 777 SSPanel-Uim
# 启动
docker-compose up -d
# 复制配置文件
cp SSPanel-Uim/config/.config.example.php SSPanel-Uim/config/.config.php
cp SSPanel-Uim/config/appprofile.example.php SSPanel-Uim/config/appprofile.php

cat <<\EOF

请编辑配置文件 
vim SSPanel-Uim/config/.config.php
自行填写或者复制下面的配置到最后


$_ENV['db_host']      = 'mysql';
$_ENV['db_database']  = 'sspanel';           //数据库名
$_ENV['db_username']  = 'root';              //数据库用户名
$_ENV['db_password']  = 'my-secret-pw';      //用户名对应的密码
$_ENV['db_port']      = '3306';              //端口
$_ENV['redis_host']   = 'redis';             //Redis地址，使用unix domain socket时填写文件路径

进入容器
docker compose exec -it php /bin/bash
执行站点初始化配置
🉑参考 https://wiki.sspanel.org/#/install-using-ubuntu?id=%e9%83%a8%e7%bd%b2-sspanel-uim

cd /var/www/SSPanel-Uim
chown -R `whoami`:`groups` .
php xcat Migration new
php xcat Tool importSetting
php xcat Tool createAdmin
php xcat ClientDownload

EOF

chmod -x install.sh
