# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# show differences in colour
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Some shortcuts for different directory listings
alias l='ls -CF'
alias l.='ls -d .*'
alias la='ls -A' # all but . and ..
alias ll='ls -alF'
alias ls='ls --color=auto'

alias ..='cd ..'
alias ...='cd ../..'

alias ec='emacsclient -n'
