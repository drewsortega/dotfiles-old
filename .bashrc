#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias open='xdg-open'
alias ls='ls --color=auto'
alias rm='rm -i'
alias nvidia-settings='optirun -b none nvidia-settings -c :8'
alias mnttools='~/packages/mnttools/mnttools'
PS1='[\u@\h \W]\$ '

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

#theme(){
#    wal -n -i "$@"
#    feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"
#}
export VISUAL="vim"
