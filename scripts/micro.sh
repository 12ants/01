#!/bin/bash
sudo apt install -y micro
micro -plugin install filemanager fish manipulator jump lsp wc editorconfig
echo 'alias mm=micro' >> /etc/bash.bashrc
cp micro_bindings.json "/home/$SUDO_USER/.config/micro/bindings.json" -b 
cp micro_bindings.json "/home/$USER/.config/micro/bindings.json" -b
