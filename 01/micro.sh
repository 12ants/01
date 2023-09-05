#!/bin/bash

sudo apt install -y micro
micro -plugin install filemanager fish manipulator jump lsp wc editorconfig
echo 'alias mm=micro' >> /etc/bash.bashrc
wget -O "/home/$SUDO_USER/.config/micro/bindings.json" 12ants.github.io/01/micro.json 
wget -O "/home/$USER/.config/micro/bindings.json" 12ants.github.io/01/micro.json 
