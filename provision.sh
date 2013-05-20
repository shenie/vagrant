#!/bin/bash

echo ">> Install tmux"
sudo apt-get install tmux

echo ">> Install atop"
sudo apt-get install atop

echo ">> Install htop"
sudo apt-get install htop

echo ">> Install git"
sudo apt-get install git

echo ">> Setup .dotfiles"
find /vagrant/dotfiles -type f | while read f
do
  echo ">> Setup $(basename $f)"
  cp $f ~vagrant/.$(basename $f)
done

echo ">> Setup mxiostat"
if [ ! -d /usr/local/mxiostat ] ; then
  sudo git clone https://github.com/siebenmann/mxiostat.git /usr/local/mxiostat
fi
