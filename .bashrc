#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a'
alias grep='grep --color=auto'

alias cdi3='cd ~/.config/i3/'
alias cdpoly='cd /etc/polybar/'
alias cdpicom='cd ~/.config/picom/'
alias cddot='cd ~/Documents/dotfiles'

alias nvimi3='nvim ~/.config/i3/config'
alias nvimpoly='sudo nvim /etc/polybar/config.ini'
alias nvimpicom='nvim ~/.config/picom/picom.conf'
alias bat='bat --style plain'
alias pacsyu='sudo pacman -Syu'
export PATH="$HOME/.local/bin:$PATH"

# Git branch in prompt
git_branch() {
    git branch --show-current 2>/dev/null
}

PS1='[\#] \w$(b=$(git_branch); [ -n "$b" ] && printf " (%s)" "$b") \$ '
