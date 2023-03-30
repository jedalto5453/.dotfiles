#!/bin/bash

#removes .vimrc fine in home directory
rm -f ~/.vimrc

#searches for line "" and removes it from .bashrc
sed -i "/bashrc_custom/d" ~/.bashrc

#removes .TRASH dir recursively from home directory
rm -rf ~/.TRASH


