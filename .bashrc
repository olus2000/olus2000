#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

PS1='\[\e[1;32m\]\u@\h\[\e[00m\]:\[\e[34m\]\w\[\e[00m\]\$ '
export EDITOR=vim
# export PYTHONPATH="${PYTHONPATH}:/home/olus2000/.local/bin"

# ls
alias ll='ls -la --color=auto'
alias lr='ls -R'
alias lm='ll | more'
alias lM='lr | more'

# cd
alias cd..='cd ..'
alias ..='cd ..'
alias cv='vim .'

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

# Functions
gpp() {
    g++ *.cpp -fdiagnostics-color=always -Wall -O2 -o $1
}

connect() {
    wpa_supplicant -B -i wlp0s20f3 -c /etc/wpa_supplicant/$1
    dhcpcd
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
