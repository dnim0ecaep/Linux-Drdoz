
sudo apt install aptitude
aptitude search '?section(games)' -F '%p' | xargs sudo apt purge -y
dpkg-query -W | grep -i game | cut -f1 | xargs sudo apt purge -y
sudo apt remove gnome-taquin
sudo apt autoremove
killall gnome-software

gnome-software &

