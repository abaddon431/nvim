#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

color_prompt=yes
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias vim="nvim"
alias sudo="sudo "

# colors
declare blk="\[\033[01;30m\]"
declare red="\[\033[01;31m\]"
declare grn="\[\033[01;32m\]"
declare ylw="\[\033[01;33m\]"
declare blu="\[\033[01;34m\]"
declare pur="\[\033[01;35m\]"
declare cyn="\[\033[01;36m\]"
declare wht="\[\033[01;37m\]"
declare clr="\[\033[00m\]"


git_branch () {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
	PS1='['${grn}'\u@\h'${clr}' '${blu}'\W'${clr}'] '${ylw}'$(git_branch)'${clr}'\$ '
else
	PS1='[\u@h \W] $(git_branch)\$ '
fi
