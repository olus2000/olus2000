#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

# PS1='\[\e[1;32m\]\u@\h\[\e[00m\]:\[\e[34m\]\w\n\$\[\e[00m\] '
PS1='\[\e[1;34m\]$(ps1)\n\[\e[32m\]\$\[\e[00m\] '
# PS1='\[\e[1;34m\]$(factor --run=ps1)\[\e[32m\] \$\[\e[00m\] '

export EDITOR=nvim
# export PYTHONPATH="${PYTHONPATH}:/home/olus2000/.local/bin"
export PATH="${PATH}:/usr/local/lib"

# ls
alias ll='ls -la --color=auto'
alias lr='ls -R'
alias lm='ll | more'
alias lM='lr | more'

# cd
alias cd..='cd ..'
alias ..='cd ..'
alias cv='nvim .'

# Network startup
alias wpa_sabak='wpa_supplicant -B -i wlp0s20f3 -c /etc/wpa_supplicant/wpa_supplicant.conf'

# Miscellaneououeoeuos
alias pacman='pacman --color=always'
alias mkdir='mkdir -p'
alias py='python'
alias more='less'
alias venv='source venv/bin/activate'
alias tree='tree -C'
alias sudo='sudo -v; sudo '
alias pico='setsid --fork /share/olus2000/pico-8/pico8'
alias postman='setsid --fork /home/olus2000/Postman/app/postman'
alias dockcom='docker commit -a "Aleksander Sabak" -m'
# alias factor='~/factor/factor'
alias vimwiki='nvim -c VimwikiIndex'
alias vim='nvim'
alias ghc='ghc -dynamic'
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
alias emacs='emacs -nw'
alias hexdump='hexyl --border=none'
alias hexyl='hexyl --border=ascii'
alias fosserver='fossil server --repolist --localauth ~/share/projects/museum/'

# Functions
gpp() {
    g++ *.cpp -fdiagnostics-color=always -Wall -O2 -o $1
}

connect() {
    wpa_supplicant -B -i wlp0s20f3 -c /etc/wpa_supplicant/$1
    dhcpcd
}

brightness() {
    sudo sh -c "echo $1 > /sys/class/backlight/nvidia_0/brightness"
}

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

export QSYS_ROOTDIR="/home/olus2000/intelFPGA_lite/20.1/quartus/sopc_builder/bin"

# Added by Radicle.
export PATH="$PATH:/home/olus2000/.radicle/bin"

# ARM toolchain
export PATH="$PATH:/home/olus2000/share/projects/heartwood/arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-linux-gnueabihf/bin"
