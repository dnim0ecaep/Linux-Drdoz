apt install flatpak
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo


gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
apt install lightdm-settings

flatpak install flathub com.brave.Browser

