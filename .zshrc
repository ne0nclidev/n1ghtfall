autoload -Uz compinit && compinit
setopt correct_all
alias ll='ls -lah'
alias lll='ls -laAh'
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
