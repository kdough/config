source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/zsh_hooks.zsh
source ~/.zsh/hitch.zsh
source /usr/local/share/zsh/site-functions/_aws

#eval "$(rbenv init -)"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/pear/bin # Add RVM to PATH for scripting

#precmd () {print -Pn "\e]0;%n@%M: %~\a"}

#precmd ()
#{
#	tab_label="${PWD/${HOME}/\~}" # use 'relative' path
#	echo -ne "\e]2;${tab_label}\a" # set window title to full string
#	echo -ne "\e]1;${tab_label: -24}\a" # set tab title to rightmost 24 characters
#}

if [[ ${TERM} == "screen-bce" || ${TERM} == "screen" ]]; then
	precmd () { print -Pn "\033k\033\134\033k%m[%1d]\033\134" }
	preexec () { print -Pn "\033k\033\134\033k%m[$1]\033\134" }
else
	precmd () { print -Pn "\e]0;%n@%m: %~\a" }
	preexec () { print -Pn "\e]0;%n@%m: $1\a" }
fi
PS1=$'%{\e[0;32m%}%m%{\e[0m%}:%~> '
export PS1
