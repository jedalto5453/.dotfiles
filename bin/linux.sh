#!/bin/bash

# ensures that the system type is Linux and if not error message is sent to linuxsetup.log and closes the script
if [ $(uname) = 'Linux' ]; then
  echo "Your operating system is $(uname)"
else
  uname 2> linuxsetup.log
  exit
fi

# makes .TRASH dir unless it already exists
mkdir -p ~/.TRASH/

#ensures that .vimrc exists
touch ~/.vimrc

# if .vimrc was found then vimrc was renamed to bup_vimrc.log and updates the home directory of this change
if [[ -f ~/.vimrc ]]; then
  mv ~/.vimrc ~/.bup_vimrc | echo ".vimrc has been renamed to '.bup_vimrc'." >> linuxsetup.log
fi

# overwrites .vimrc with vimrc from etc dir
cat etc/vimrc > ~/.vimrc

# appending statement to .bashrc in home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
