autoload -Uz compinit && compinit
setopt correct_all
alias ll='ls -lah'
alias lll='ls -laAh'

# Directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cd..='cd ..'
alias mkdir='mkdir -p'

# File operations
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias rmf='rm -rf'
alias cat='cat -v'

# System information
alias df='df -h'
alias du='du -h'
alias ps='ps aux'
alias top='top -u $USER'

# Network utilities
alias ping='ping -c 5'
alias ports='netstat -tuln'
alias myip='curl -s https://ipinfo.io/ip'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias glog='git log --oneline -10'
alias gbr='git branch'
alias gco='git checkout'
alias gdiff='git diff'

# Development
alias python='python3'
alias pip='pip3'
alias vi='vim'
alias cc='clear'
alias cls='clear'

# Utility aliases
alias grep='grep --color=auto'
alias less='less -R'
alias tree='tree -L 2'

print -P "%F{057}n1ghtfall (v2)%f"
print -P "%F{053}     ___       _   _   ___     _ _ %f"
print -P "%F{056} ___|_  |  ___| |_| |_|  _|___| | |%f"
print -P "%F{061}|   |_| |_| . |   |  _|  _| .'| | |%f"
print -P "%F{098}|_|_|_____|_. |_|_|_| |_| |__,|_|_|%f"
print -P "%F{161}     n1ght%f%F{105}|___|%f%F{161}fall.sh%f"
print ""
print -P "[%F{073}==%f] %F{085}Loaded!%f"
print ""
PROMPT=$'╭─[%F{025}%~%f]─[%F{056}$USER@n1ghtfall%f]─[%F{056}+%f]>\n╰──%F{025}%B$%b%f '
preexec() { echo -ne "\e[0m" }
# alternative: PROMPT="[%F{025}%~%f] %F{053}n%f%F{056}1%f%F{061}g%f%F{098}h%f%F{105}t%f%F{111}f%f%F{117}all%f %F{056}$%f "
# if you want the alternative, uncomment the above (longer) line and comment out the default (shorter) line 
