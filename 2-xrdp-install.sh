grep "Exec" /usr/share/xsessions/cinnamon.desktop | cut -d "=" -f 2
sudo apt install xrdp -y
echo "cinnamon-session-cinnamon" | tee .xsession
echo env -u SESSION_MANAGER -u DBUS_SESSION_BUS_ADDRESS cinnamon-session>~/.xsession
sudo adduser mdbeyhl ssl-cert  
sudo systemctl restart xrdp

