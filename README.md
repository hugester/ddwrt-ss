#dd-wrt路由器配置透明代理
--------------------------------
disable the clean jffs
Services->Secure Shell
enable the sshd
enable the ssh tcp forwarding
enable the password login
apply the settings and reboot the router
---wait for reboot----
ssh root@router_local_ip_address (enter the router passowrd)

--------------------------------
#第一次安装需要运行ssinstall.sh
sh ssinstall.sh 
#配置ss客户端文件
/opt/etc/tunnel.json 本地端口请配1081，主要转发udp的包。
/opt/etc/ssredir.json 本地端口请1080，主要转tcp的包。
然后执行sh ss-start.sh

---------------------------------
#如果要更新配置需要执行以下命今
sh killserver.sh
sh ss-start.sh

---------------------------------
#脚本草创，还有很多要改进的地方，请大家多多指教。如果路由器重启了，需要重新运行sh ssInstall.sh。


