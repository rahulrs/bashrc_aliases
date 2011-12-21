#!/bin/sh

# Retrieve machine name 
mcname=`uname -n`

# Re-source bashrc
alias bashrc=". ~/.bashrc"

# Echo machine characteristics
alias un="uname -a"

# Regular commands
alias cl="clear"
alias grep="grep --color"
alias psg="ps -ef|grep"
alias ls="ls --color"
alias l="ls -ltF"
alias lx="ls -ltFX"
alias rmt="rm *~"
alias py="python"
alias ff="firefox"
alias oo="openoffice.org-2.0"
alias gd="gedit"
alias ac="acroread"
alias ev="evince"
alias cd4="cd ../../../.."
alias cd3="cd ../../.."
alias cd2="cd ../.."
alias trash="/bin/rm -rf ~/.Trash/*"
alias ds="du -hs"
alias dbox="~/.dropbox-dist/dropboxd &"
alias brm="/bin/rm"
alias lns="ln -s"

# XPS system
alias xpss="xps system &"

# Emacs
alias ea="emacs -nw"
alias ra="emacs -nw"
alias e="emacs -nw"

# Remote Desktop
alias rdesktop="rdesktop -g 1154x864 -a 16"

# SSH shorthands
alias homer="ssh -Y rsharm14@rsass-homer.uncc.edu"
alias lxs="ssh -Y rsharm14@lxs.uncc.edu"
alias calvin="ssh -Y calvin"
alias hobbes="ssh -Y hobbes"
alias eva="ssh -Y eva"
alias ray="ssh -Y ray"
alias hertz="ssh -Y hertz"
alias lxs="ssh -Y lxs.uncc.edu"
alias lxsm="ssh -Y rsharm14@lxs-me1.uncc.edu"
alias lxs1="ssh -Y rsharm14@lxs-sm1.uncc.edu"
alias lxs2="ssh -Y rsharm14@lxs-sm2.uncc.edu"
alias lxs3="ssh -Y rsharm14@lxs-sm3.uncc.edu"
alias me1="ssh -Y rsharm14@lxs-me1.uncc.edu"
alias me2="ssh -Y rsharm14@lxs-me2.uncc.edu"
alias me3="ssh -Y rsharm14@lxs-me3.uncc.edu"
alias me4="ssh -Y rsharm14@lxs-me4.uncc.edu"

# Chargernet
alias cnet="ssh -Y rsharm14@viper.urc.uncc.edu"
alias viper="ssh -Y rsharm14@viper.urc.uncc.edu"
alias hviper="ssh -Y rsharm14@hviper.urc.uncc.edu"

# XPS versions
#alias timing_check="trce -v -o timing.twr system.ncd system.pcf"
alias timing_check="python /home/rsharm14/auto_processes/timing_check_twr_parse/timing_check.py"

# Modelsim check
alias vmpf="vsim *.mpf &"

# Generic alert on GUI - Useful for multi-tasking across workspaces
# USAGE: alert "<custom message>"
alias alert="zenity --info --text "

# Reckless rm prevention script
alias rm='safe_rm'
safe_rm() # Safe rm procedure
{
    # Cycle through each argument for deletion
    for file in $*; do
        if [ -e $file ]; then
	        
            # Target exists and can be moved to Trash safely
            if [ ! -e ~/.Trash/$file ]; then
                mv $file ~/.Trash

            # Target exists and conflicts with target in Trash
            elif [ -e ~/.Trash/$file ]; then

                # Increment target name until 
                # there is no longer a conflict
                i=1
                while [ -e ~/.Trash/$file.$i ];
                do
                    i=$(($i + 1))
                done

                # Move to the Trash with non-conflicting name
                mv $file ~/.Trash/$file.$i
            fi
	        
        # Target doesn't exist, return error
        else
            echo "rm: $file: No such file or directory";
        fi
    done
}



