#!/usr/sh


:<<- 'EOF'
local_address=
server_address=
server_port=
local_address=
reset the dd-wrt
Administration->JFFS2 Support
enable the jffs
enable the clean jffs  and reboot the router
------wait for reboot---------------------
disable the clean jffs
Services->Secure Shell
enable the sshd
enable the ssh tcp forwarding
enable the password login
apply the settings and reboot the router
------wait for reboot---------------------
ssh root@router_local_ip_address (enter the router passowrd)
EOF

if [[ ! -d /jffs/opt ]];then
    mkdir /jffs/opt
fi
mount -o bind /jffs/opt /opt
wget -O - http://pkg.entware.net/binaries/armv7/installer/entware_install.sh | sh
opkg update
opkg install shadowsocks-libev-ss-redir
opkg install shadowsocks-libev-ss-tunnel
opkg install chinadns
