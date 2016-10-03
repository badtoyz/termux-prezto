#!/data/date/com.termux/files/bin/bash

# Prezto install for termux

#Termux storage setup
termux-setup-storage

#Update apt and install git and zsh
apt update 
apt install -y git zsh

#Clone Preszto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
#clear

#Install Prezto sim links
ln -s $HOME/.zpresto/runcoms/zlogin  $HOME/.zlogin
ln -s $HOME/.zprezto/runcoms/zlogout $HOME/.zlogout
ln -s $HOME/.zprezto/runcoms/zpreztorc $HOME/.zpreztorc
ln -s $HOME/.zprezto/runcoms/zshenv $HOME/.zshenv
ln -s $HOME/.zprezto/runcoms/zshrc $HOME/.zshrc

#Backup termux config
if [ -d "$HOME/.termux"]; then
  mv $HOME/.termux $HOME/.termux.bak
fi

#Clone Termux-Prezto project
git clone https://github.com/badtoyz/termux-prezto "$HOME/.termux"
#clear

#Make Zsh default
chsh -s zsh

echo Done
exit
