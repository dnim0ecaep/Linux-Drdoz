


curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

#Fix User Permissions
sudo usermod -aG docker $USER

#Fix Docker Sharing Permissions
sudo chmod 666 /var/run/docker.sock



echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc

docker run -d   --name yacht   -p 8000:8000   -v /var/run/docker.sock:/var/run/docker.sock   -v yacht_data:/config   selfhostedpro/yacht 

flatpak install flathub com.github.sdv43.whaler
