# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## vimrc
In my vimrc file, I have syntax on, set number on, set autoindent on, set ruler on, set color to elflord, and for Makefiles, autotab is disabled in order to prevent runtime errors.
## bashrc_custom
Executables do not require the ./ to be run because . was exported to $PATH. 
Created aliases to make typing more efficient in Linux. 
Created a function to make it easier to tar files from the directory simply by typing targz and similarly, untar works to extract a targz file. 
## linux.sh
Ensured the operating system is Linux. 
Created a .TRASH directory in home directory if it didn't already exist.
Renamed .vimrc to .bup_vimrc if the .vimrc file already exists in home directory and dumps a message to linuxsetup.log to indicate the change. 
The output of etc/vimrc file is redirected and overwrites the .vimrc file in the home directory.
Appends the string statement "source ~/.dotfiles/etc/bashrc_custom" to the .bashrc file in the home directory.
## cleanup.sh
This cleans up anything that was done in thh linux.sh script. It will remove the .vimrc file, the string "source ~/.dotfiles/bashrc_custom" in .bashrc, the .TRASH directory in the home directory.
## Makefile
Creates two targets (recipes) called linux and clean, the linux target having a dependency on the clean target. linux runs the ./bin/linux.sh script and creates the linuxsetup.log before the script runs. The clean target runs the ./bin/cleanup.sh script and removes the linuxsetup.log before running the script.
