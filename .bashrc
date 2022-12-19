#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

. ~/git-prompt.sh

git_prompt() {
    TSG=$(__git_ps1 "\001\e[34;42m\002\xee\x82\xb0\x0a\001\e[30m\002\xee\x9c\xa5\x0a %s \001\e[32;40m\002\xee\x82\xb0\x0a")
    TST="\001\e[34;40m\002\xee\x82\xb0\x0a"
    echo -e ${TSG:-$TST}
}

export GIT_PS1_DESCRIBE_STYLE=branch
export PS1='\[\e[30;44m\] \w $(git_prompt)\[\e[0m\] '
export GPG_TTY=$(tty)
