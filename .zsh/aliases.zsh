# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'
alias la='ls -aGF'

# Same as above, but in long listing format
alias ll='ls -GFhl'

alias l='less'
alias h='history 30'

alias rgrep='grep -r'

# Processes
alias psg='printf "%-5s%5s%5s%7s%6s\n" PID \%CPU \%MEM VSZ RSS ; ps -A -o pid,pcpu,pmem,vsz,rss,command | grep -v grep | grep $*'
alias psl='ps awx | less'

# Ruby
alias ri='ri -Tf ansi'
alias bx='bundle exec'
