#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return # wtf is this?

# titlebar text
PROMPT_COMMAND='echo -ne "\033]0;terminal\007"'

# Aliases
alias ls='ls --color'
alias grep='grep --color=auto'
alias yt-dl='youtube-dl --extract-audio --audio-format mp3 --restrict-filenames -o "~/Music/%(title)s.%(ext)s" '
alias rm='timeout 3 rm -Iv --one-file-system'
alias reflector-update='reflector --latest 50 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias sudo='sudo ' # sudo alias to make sudo work with other aliases
alias please='sudo '
alias fuck='sudo $(history -p !!)'

# PS1 (dir $)   # \[ \] around colors to fix wrap bug
PS1='\W\[\e[0;95m\] $\[\e[0m\] '

# colored output in 'man' by using 'less' (some weird color hack)
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

LS_COLORS='di=1;34:fi=0:ln=1;36:or=31:mi=0:ex=92;1'
export LS_COLORS

# Add script directory to path
PATH=$PATH:/home/viktor/scripts

# temp adding this here
alias chrome='chromium --disable-gpu-driver-bug-workarounds --use-gl=osmesa &>/dev/null &'
