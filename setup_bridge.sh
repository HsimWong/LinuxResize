
nmcli con delete "$MAIN_CONN"
nmcli c add type bridge ifname br0 con-name br0 stp off autoconnect yes
nmcli c add type bridge-slave ifname "$MAIN_CONN" con-name "$MAIN_CONN" master br0 autoconnect yes
systemctl restart NetworkManager

