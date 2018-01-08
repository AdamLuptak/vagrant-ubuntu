sudo add-apt-repository ppa:cockpit-project/cockpit
sudo apt-get update
sudo apt-get -y install cockpit cockpit-dashboard cockpit-docker
firewall-cmd --add-port=9090/tcp
firewall-cmd --permanent --add-port=9090/tcp
sudo systemctl enable cockpit.socket
sudo systemctl start cockpit.socket 