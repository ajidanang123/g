#!/bin/bash
cleae
echo Installing Websocket-SSH AUTOSCRIPT BY KONTOL
sleep 1
echo Cek Hak Akses...
sleep 0.5
cd
#Install system auto run
wget -O /etc/systemd/system/ws-ssh.service https://raw.githubusercontent.com/vivianiyulianti45/mysc/main/ws-ssh.service && chmod +x /etc/systemd/system/ws-ssh.service
wget -O /etc/systemd/system/ws-ovpn.service https://raw.githubusercontent.com/vivianiyulianti45/mysc/main/ws-ovpn.service && chmod +x /etc/systemd/system/ws-ovpn.service
wget -O /etc/systemd/system/ws-openssh.service https://raw.githubusercontent.com/vivianiyulianti45/mysc/main/ws-openssh.service && chmod +x /etc/systemd/system/ws-openssh.service
wget -O /etc/systemd/system/ws-stunnel.service https://raw.githubusercontent.com/vivianiyulianti45/mysc/main/ws-stunnel.service && chmod +x /etc/systemd/system/ws-stunnel.service
#Install Websocket-SSH

wget -O /usr/local/bin/ws-ssh https://raw.githubusercontent.com/vivianiyulianti45/mysc/main/ws-ssh && chmod +x /usr/local/bin/ws-ssh
wget -O /usr/local/bin/ws-ovpn https://raw.githubusercontent.com/vivianiyulianti45/mysc/main/ws-ovpn && chmod +x /usr/local/bin/ws-ovpn
wget -O /usr/local/bin/ws-openssh https://raw.githubusercontent.com/vivianiyulianti45/mysc/main/ws-openssh && chmod +x /usr/local/bin/ws-openssh
wget -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/vivianiyulianti45/mysc/main/ws-stunnel && chmod +x /usr/local/bin/ws-stunnel
#
chmod +x /usr/local/bin/ws-openssh
cd
#
cd
systemctl daemon-reload
#Enable & Start ws-ssh service
systemctl enable ws-ssh.service
systemctl start ws-ssh.service

#Enable & Start ws-ovpn service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service

#Enable & Start ws-openssh service
systemctl enable ws-openssh.service
systemctl start ws-openssh.service

#Enable & Start ws-ssh service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
