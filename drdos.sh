#!/bin/bash
# install help
sudo cp drdos-help.sh /usr/local/bin/drdos-help
sudo chmod +x /usr/local/bin/drdos-help

sudo cp menu-maker /usr/local/bin/
sudo chmod +x /usr/local/bin/menumaker

sudo apt install -y python3-pip python3.11-venv
sudo apt install fd-find eza bat micro tldr mc ncdu btop

sudo apt update
sudo apt install -y gpg
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza


# Define the aliases
ALIASES=$(cat <<'EOF'
# Custom Aliases
alias copy='cp -iv'
alias move='mv -iv'
alias del='rm -iv'
alias cls='clear'
alias type='bat --paging=never'
alias edit='mc'
alias find='fd'
alias help='tldr'
alias attrib='lsattr'
alias mem='free -h'
alias chkdsk='df -h'
alias tasklist='ps aux'
alias taskkill='kill'
alias dir='eza --long --header --group-directories-first --sort=name --color=always --time-style=long-iso'
alias ddir='eza --long --header --group-directories-first --sort=name --color=always --time-style=long-iso --grid'
EOF
)

# Append to bash.bashrc
if ! grep -q "# Custom Aliases" /etc/bash.bashrc; then
  echo "$ALIASES" | sudo tee -a /etc/bash.bashrc > /dev/null
fi

# Append to zshrc
#ZSHRC="/etc/zsh/zshrc"
#if ! grep -q "# Custom Aliases" "$ZSHRC"; then
#  echo "$ALIASES" | sudo tee -a "$ZSHRC" > /dev/null
#fi

echo "Aliases added to /etc/bash.bashrc and /etc/zsh/zshrc."

