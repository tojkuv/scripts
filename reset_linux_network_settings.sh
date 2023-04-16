# resets all the iptables of the linux device and restarts the network manager
sudo iptables -F INPUT
sudo iptables -F OUTPUT
sudo iptables -P INPUT ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo systemctl restart NetworkManager

# reboot the device